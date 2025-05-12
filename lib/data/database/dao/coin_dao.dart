import 'package:drift/drift.dart';
import 'package:solana_wallet_sample/data/database/app_database.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/coin_type.dart';
import 'package:solana_wallet_sample/data/model/coin/icon_coin_data.dart';

abstract class CoinDao {
  Future<void> saveBaseCoinData({
    required List<BaseCoinData> coins,
  });

  Future<List<BaseCoinData>> getBaseCoinData({
    int? limit,
    int offset = 0,
    String? query,
  });

  Future<List<BaseCoinData>> getBaseCoinDataByIds({required List<String> ids});

  Future<List<String>> getCoinIdsWithoutIcon({int limit});

  Future<List<BaseCoinData>> getBaseCoinDataByContracts(List<String> contractAddresses);

  Future<void> saveActiveCoins(List<String> ids);

  Future<void> saveBlockchainCoinData(List<BlockchainCoinData> list);

  Future<List<BlockchainCoinData>> getBlockchainCoinData();

  Future<List<String>> getActiveCoins();

  Future<void> updateCoinIcons(List<IconCoinData> list);

  // for testing
  Future<void> clearAllTables();

  // for testing
  Future<List<dynamic>> getAllTables();
}

class CoinDaoImpl implements CoinDao {
  final AppDatabase database;

  CoinDaoImpl({required this.database});

  @override
  Future<void> saveBaseCoinData({required List<BaseCoinData> coins}) => database.batch(
        (batch) {
          batch.deleteAll(database.baseCoinDataTable);
          batch.insertAll(
            database.baseCoinDataTable,
            coins
                .map(
                  (coin) => BaseCoinDataTableCompanion.insert(
                    id: coin.id,
                    contractAddress: Value(coin.contractAddress),
                    ticker: coin.ticker,
                    iconUrl: Value(coin.iconUrl),
                    type: coin.type.name,
                  ),
                )
                .toList(),
          );
        },
      );

  @override
  Future<void> updateCoinIcons(List<IconCoinData> list) async {
    if (list.isEmpty) return;

    await database.batch((batch) {
      for (final data in list) {
        batch.update(
          database.baseCoinDataTable,
          const BaseCoinDataTableCompanion().copyWith(
            iconUrl: Value(data.image),
          ),
          where: (tbl) => tbl.id.equals(data.id),
        );
      }
    });
  }

  @override
  Future<List<BaseCoinData>> getBaseCoinData({
    int? limit,
    int offset = 0,
    String? query,
  }) async {
    //await database.customStatement('DROP TABLE IF EXISTS blockchain_coin_data_table');
    final stmt = database.select(database.baseCoinDataTable)..orderBy([(t) => OrderingTerm(expression: t.ticker)]);

    if (query != null && query.trim().isNotEmpty) {
      final pattern = '%${query.toLowerCase()}%';
      stmt.where((t) => t.ticker.lower().like(pattern));
    }

    if (limit != null) {
      stmt.limit(
        limit,
        offset: offset,
      );
    }

    final rows = await stmt.get();
    return rows
        .map(
          (row) => BaseCoinData(
            id: row.id,
            contractAddress: row.contractAddress,
            ticker: row.ticker,
            iconUrl: row.iconUrl,
            type: CoinType.fromString(row.type),
          ),
        )
        .toList();
  }

  @override
  Future<List<BaseCoinData>> getBaseCoinDataByIds({required List<String> ids}) async {
    if (ids.isEmpty) return [];

    final rows = await (database.select(database.baseCoinDataTable)..where((tbl) => tbl.id.isIn(ids))).get();

    return rows
        .map(
          (row) => BaseCoinData(
            id: row.id,
            contractAddress: row.contractAddress,
            ticker: row.ticker,
            iconUrl: row.iconUrl,
            type: CoinType.fromString(row.type),
          ),
        )
        .toList();
  }

  @override
  Future<List<String>> getCoinIdsWithoutIcon({int limit = 250}) async {
    final query = (database.select(database.baseCoinDataTable)
      ..where((t) => t.iconUrl.isNull())
      ..orderBy([(t) => OrderingTerm(expression: t.id)])
      ..limit(limit));

    return query.map((row) => row.id).get();
  }

  @override
  Future<List<BaseCoinData>> getBaseCoinDataByContracts(List<String> contractAddresses) async {
    if (contractAddresses.isEmpty) return [];

    final query = database.select(database.baseCoinDataTable)
      ..where((tbl) => tbl.contractAddress.isIn(contractAddresses));

    final rows = await query.get();

    return rows
        .map(
          (row) => BaseCoinData(
            id: row.id,
            contractAddress: row.contractAddress,
            ticker: row.ticker,
            iconUrl: row.iconUrl,
            type: CoinType.fromString(row.type),
          ),
        )
        .toList();
  }

  @override
  Future<void> saveActiveCoins(List<String> ids) async => database.batch((batch) {
        batch.deleteAll(database.activeCoinsTable);
        batch.insertAll(
          database.activeCoinsTable,
          ids.map((id) => ActiveCoinsTableCompanion.insert(id: id)).toList(),
          mode: InsertMode.insertOrReplace,
        );
      });

  @override
  Future<List<String>> getActiveCoins() async {
    final rows = await database.select(database.activeCoinsTable).get();

    return rows.map((row) => row.id).toList();
  }

  @override
  Future<void> saveBlockchainCoinData(List<BlockchainCoinData> list) async => database.batch((batch) {
        batch.deleteAll(database.blockchainCoinDataTable);
        batch.insertAll(
          database.blockchainCoinDataTable,
          list
              .map(
                (e) => BlockchainCoinDataTableCompanion.insert(
                  id: e.id,
                  contractAddress: Value(e.contractAddress),
                  decimals: e.decimals,
                  balance: e.balance.toString(),
                ),
              )
              .toList(),
        );
      });

  Future<List<BlockchainCoinData>> getBlockchainCoinData() async {
    final rows = await database.select(database.blockchainCoinDataTable).get();

    return rows
        .map(
          (row) => BlockchainCoinData(
            id: row.id,
            contractAddress: row.contractAddress,
            decimals: row.decimals,
            balance: BigInt.parse(row.balance),
          ),
        )
        .toList();
  }

  // for testing
  @override
  Future<void> clearAllTables() async => await database.batch(
        (batch) {
          batch.deleteAll(database.baseCoinDataTable);
          batch.deleteAll(database.blockchainCoinDataTable);
          batch.deleteAll(database.activeCoinsTable);
        },
      );

  // for testing
  @override
  Future<List<dynamic>> getAllTables() async => [
        await database.baseCoinDataTable.select().get(),
        await database.blockchainCoinDataTable.select().get(),
        await database.activeCoinsTable.select().get(),
      ];
}
