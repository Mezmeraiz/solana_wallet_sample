// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class BlockchainCoinDataTable extends Table
    with TableInfo<BlockchainCoinDataTable, BlockchainCoinDataTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  BlockchainCoinDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _contractAddressMeta =
      const VerificationMeta('contractAddress');
  late final GeneratedColumn<String> contractAddress = GeneratedColumn<String>(
      'contract_address', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _decimalsMeta =
      const VerificationMeta('decimals');
  late final GeneratedColumn<int> decimals = GeneratedColumn<int>(
      'decimals', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _balanceMeta =
      const VerificationMeta('balance');
  late final GeneratedColumn<String> balance = GeneratedColumn<String>(
      'balance', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [id, contractAddress, decimals, balance];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'blockchain_coin_data_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<BlockchainCoinDataTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('contract_address')) {
      context.handle(
          _contractAddressMeta,
          contractAddress.isAcceptableOrUnknown(
              data['contract_address']!, _contractAddressMeta));
    }
    if (data.containsKey('decimals')) {
      context.handle(_decimalsMeta,
          decimals.isAcceptableOrUnknown(data['decimals']!, _decimalsMeta));
    } else if (isInserting) {
      context.missing(_decimalsMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    } else if (isInserting) {
      context.missing(_balanceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BlockchainCoinDataTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BlockchainCoinDataTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      contractAddress: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}contract_address']),
      decimals: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}decimals'])!,
      balance: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}balance'])!,
    );
  }

  @override
  BlockchainCoinDataTable createAlias(String alias) {
    return BlockchainCoinDataTable(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class BlockchainCoinDataTableData extends DataClass
    implements Insertable<BlockchainCoinDataTableData> {
  final String id;
  final String? contractAddress;
  final int decimals;
  final String balance;
  const BlockchainCoinDataTableData(
      {required this.id,
      this.contractAddress,
      required this.decimals,
      required this.balance});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || contractAddress != null) {
      map['contract_address'] = Variable<String>(contractAddress);
    }
    map['decimals'] = Variable<int>(decimals);
    map['balance'] = Variable<String>(balance);
    return map;
  }

  BlockchainCoinDataTableCompanion toCompanion(bool nullToAbsent) {
    return BlockchainCoinDataTableCompanion(
      id: Value(id),
      contractAddress: contractAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(contractAddress),
      decimals: Value(decimals),
      balance: Value(balance),
    );
  }

  factory BlockchainCoinDataTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BlockchainCoinDataTableData(
      id: serializer.fromJson<String>(json['id']),
      contractAddress: serializer.fromJson<String?>(json['contract_address']),
      decimals: serializer.fromJson<int>(json['decimals']),
      balance: serializer.fromJson<String>(json['balance']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'contract_address': serializer.toJson<String?>(contractAddress),
      'decimals': serializer.toJson<int>(decimals),
      'balance': serializer.toJson<String>(balance),
    };
  }

  BlockchainCoinDataTableData copyWith(
          {String? id,
          Value<String?> contractAddress = const Value.absent(),
          int? decimals,
          String? balance}) =>
      BlockchainCoinDataTableData(
        id: id ?? this.id,
        contractAddress: contractAddress.present
            ? contractAddress.value
            : this.contractAddress,
        decimals: decimals ?? this.decimals,
        balance: balance ?? this.balance,
      );
  BlockchainCoinDataTableData copyWithCompanion(
      BlockchainCoinDataTableCompanion data) {
    return BlockchainCoinDataTableData(
      id: data.id.present ? data.id.value : this.id,
      contractAddress: data.contractAddress.present
          ? data.contractAddress.value
          : this.contractAddress,
      decimals: data.decimals.present ? data.decimals.value : this.decimals,
      balance: data.balance.present ? data.balance.value : this.balance,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BlockchainCoinDataTableData(')
          ..write('id: $id, ')
          ..write('contractAddress: $contractAddress, ')
          ..write('decimals: $decimals, ')
          ..write('balance: $balance')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, contractAddress, decimals, balance);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BlockchainCoinDataTableData &&
          other.id == this.id &&
          other.contractAddress == this.contractAddress &&
          other.decimals == this.decimals &&
          other.balance == this.balance);
}

class BlockchainCoinDataTableCompanion
    extends UpdateCompanion<BlockchainCoinDataTableData> {
  final Value<String> id;
  final Value<String?> contractAddress;
  final Value<int> decimals;
  final Value<String> balance;
  final Value<int> rowid;
  const BlockchainCoinDataTableCompanion({
    this.id = const Value.absent(),
    this.contractAddress = const Value.absent(),
    this.decimals = const Value.absent(),
    this.balance = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BlockchainCoinDataTableCompanion.insert({
    required String id,
    this.contractAddress = const Value.absent(),
    required int decimals,
    required String balance,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        decimals = Value(decimals),
        balance = Value(balance);
  static Insertable<BlockchainCoinDataTableData> custom({
    Expression<String>? id,
    Expression<String>? contractAddress,
    Expression<int>? decimals,
    Expression<String>? balance,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (contractAddress != null) 'contract_address': contractAddress,
      if (decimals != null) 'decimals': decimals,
      if (balance != null) 'balance': balance,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BlockchainCoinDataTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? contractAddress,
      Value<int>? decimals,
      Value<String>? balance,
      Value<int>? rowid}) {
    return BlockchainCoinDataTableCompanion(
      id: id ?? this.id,
      contractAddress: contractAddress ?? this.contractAddress,
      decimals: decimals ?? this.decimals,
      balance: balance ?? this.balance,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (contractAddress.present) {
      map['contract_address'] = Variable<String>(contractAddress.value);
    }
    if (decimals.present) {
      map['decimals'] = Variable<int>(decimals.value);
    }
    if (balance.present) {
      map['balance'] = Variable<String>(balance.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BlockchainCoinDataTableCompanion(')
          ..write('id: $id, ')
          ..write('contractAddress: $contractAddress, ')
          ..write('decimals: $decimals, ')
          ..write('balance: $balance, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class BaseCoinDataTable extends Table
    with TableInfo<BaseCoinDataTable, BaseCoinDataTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  BaseCoinDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  static const VerificationMeta _contractAddressMeta =
      const VerificationMeta('contractAddress');
  late final GeneratedColumn<String> contractAddress = GeneratedColumn<String>(
      'contract_address', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _tickerMeta = const VerificationMeta('ticker');
  late final GeneratedColumn<String> ticker = GeneratedColumn<String>(
      'ticker', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _iconUrlMeta =
      const VerificationMeta('iconUrl');
  late final GeneratedColumn<String> iconUrl = GeneratedColumn<String>(
      'icon_url', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, contractAddress, ticker, type, iconUrl];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'base_coin_data_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<BaseCoinDataTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('contract_address')) {
      context.handle(
          _contractAddressMeta,
          contractAddress.isAcceptableOrUnknown(
              data['contract_address']!, _contractAddressMeta));
    }
    if (data.containsKey('ticker')) {
      context.handle(_tickerMeta,
          ticker.isAcceptableOrUnknown(data['ticker']!, _tickerMeta));
    } else if (isInserting) {
      context.missing(_tickerMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('icon_url')) {
      context.handle(_iconUrlMeta,
          iconUrl.isAcceptableOrUnknown(data['icon_url']!, _iconUrlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BaseCoinDataTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BaseCoinDataTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      contractAddress: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}contract_address']),
      ticker: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ticker'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      iconUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}icon_url']),
    );
  }

  @override
  BaseCoinDataTable createAlias(String alias) {
    return BaseCoinDataTable(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class BaseCoinDataTableData extends DataClass
    implements Insertable<BaseCoinDataTableData> {
  final String id;
  final String? contractAddress;
  final String ticker;
  final String type;
  final String? iconUrl;
  const BaseCoinDataTableData(
      {required this.id,
      this.contractAddress,
      required this.ticker,
      required this.type,
      this.iconUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || contractAddress != null) {
      map['contract_address'] = Variable<String>(contractAddress);
    }
    map['ticker'] = Variable<String>(ticker);
    map['type'] = Variable<String>(type);
    if (!nullToAbsent || iconUrl != null) {
      map['icon_url'] = Variable<String>(iconUrl);
    }
    return map;
  }

  BaseCoinDataTableCompanion toCompanion(bool nullToAbsent) {
    return BaseCoinDataTableCompanion(
      id: Value(id),
      contractAddress: contractAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(contractAddress),
      ticker: Value(ticker),
      type: Value(type),
      iconUrl: iconUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(iconUrl),
    );
  }

  factory BaseCoinDataTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BaseCoinDataTableData(
      id: serializer.fromJson<String>(json['id']),
      contractAddress: serializer.fromJson<String?>(json['contract_address']),
      ticker: serializer.fromJson<String>(json['ticker']),
      type: serializer.fromJson<String>(json['type']),
      iconUrl: serializer.fromJson<String?>(json['icon_url']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'contract_address': serializer.toJson<String?>(contractAddress),
      'ticker': serializer.toJson<String>(ticker),
      'type': serializer.toJson<String>(type),
      'icon_url': serializer.toJson<String?>(iconUrl),
    };
  }

  BaseCoinDataTableData copyWith(
          {String? id,
          Value<String?> contractAddress = const Value.absent(),
          String? ticker,
          String? type,
          Value<String?> iconUrl = const Value.absent()}) =>
      BaseCoinDataTableData(
        id: id ?? this.id,
        contractAddress: contractAddress.present
            ? contractAddress.value
            : this.contractAddress,
        ticker: ticker ?? this.ticker,
        type: type ?? this.type,
        iconUrl: iconUrl.present ? iconUrl.value : this.iconUrl,
      );
  BaseCoinDataTableData copyWithCompanion(BaseCoinDataTableCompanion data) {
    return BaseCoinDataTableData(
      id: data.id.present ? data.id.value : this.id,
      contractAddress: data.contractAddress.present
          ? data.contractAddress.value
          : this.contractAddress,
      ticker: data.ticker.present ? data.ticker.value : this.ticker,
      type: data.type.present ? data.type.value : this.type,
      iconUrl: data.iconUrl.present ? data.iconUrl.value : this.iconUrl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BaseCoinDataTableData(')
          ..write('id: $id, ')
          ..write('contractAddress: $contractAddress, ')
          ..write('ticker: $ticker, ')
          ..write('type: $type, ')
          ..write('iconUrl: $iconUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, contractAddress, ticker, type, iconUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BaseCoinDataTableData &&
          other.id == this.id &&
          other.contractAddress == this.contractAddress &&
          other.ticker == this.ticker &&
          other.type == this.type &&
          other.iconUrl == this.iconUrl);
}

class BaseCoinDataTableCompanion
    extends UpdateCompanion<BaseCoinDataTableData> {
  final Value<String> id;
  final Value<String?> contractAddress;
  final Value<String> ticker;
  final Value<String> type;
  final Value<String?> iconUrl;
  final Value<int> rowid;
  const BaseCoinDataTableCompanion({
    this.id = const Value.absent(),
    this.contractAddress = const Value.absent(),
    this.ticker = const Value.absent(),
    this.type = const Value.absent(),
    this.iconUrl = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BaseCoinDataTableCompanion.insert({
    required String id,
    this.contractAddress = const Value.absent(),
    required String ticker,
    required String type,
    this.iconUrl = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        ticker = Value(ticker),
        type = Value(type);
  static Insertable<BaseCoinDataTableData> custom({
    Expression<String>? id,
    Expression<String>? contractAddress,
    Expression<String>? ticker,
    Expression<String>? type,
    Expression<String>? iconUrl,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (contractAddress != null) 'contract_address': contractAddress,
      if (ticker != null) 'ticker': ticker,
      if (type != null) 'type': type,
      if (iconUrl != null) 'icon_url': iconUrl,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BaseCoinDataTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? contractAddress,
      Value<String>? ticker,
      Value<String>? type,
      Value<String?>? iconUrl,
      Value<int>? rowid}) {
    return BaseCoinDataTableCompanion(
      id: id ?? this.id,
      contractAddress: contractAddress ?? this.contractAddress,
      ticker: ticker ?? this.ticker,
      type: type ?? this.type,
      iconUrl: iconUrl ?? this.iconUrl,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (contractAddress.present) {
      map['contract_address'] = Variable<String>(contractAddress.value);
    }
    if (ticker.present) {
      map['ticker'] = Variable<String>(ticker.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (iconUrl.present) {
      map['icon_url'] = Variable<String>(iconUrl.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BaseCoinDataTableCompanion(')
          ..write('id: $id, ')
          ..write('contractAddress: $contractAddress, ')
          ..write('ticker: $ticker, ')
          ..write('type: $type, ')
          ..write('iconUrl: $iconUrl, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class ActiveCoinsTable extends Table
    with TableInfo<ActiveCoinsTable, ActiveCoinsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  ActiveCoinsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  @override
  List<GeneratedColumn> get $columns => [id];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'active_coins_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ActiveCoinsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ActiveCoinsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ActiveCoinsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
    );
  }

  @override
  ActiveCoinsTable createAlias(String alias) {
    return ActiveCoinsTable(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class ActiveCoinsTableData extends DataClass
    implements Insertable<ActiveCoinsTableData> {
  final String id;
  const ActiveCoinsTableData({required this.id});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    return map;
  }

  ActiveCoinsTableCompanion toCompanion(bool nullToAbsent) {
    return ActiveCoinsTableCompanion(
      id: Value(id),
    );
  }

  factory ActiveCoinsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ActiveCoinsTableData(
      id: serializer.fromJson<String>(json['id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
    };
  }

  ActiveCoinsTableData copyWith({String? id}) => ActiveCoinsTableData(
        id: id ?? this.id,
      );
  ActiveCoinsTableData copyWithCompanion(ActiveCoinsTableCompanion data) {
    return ActiveCoinsTableData(
      id: data.id.present ? data.id.value : this.id,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ActiveCoinsTableData(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => id.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ActiveCoinsTableData && other.id == this.id);
}

class ActiveCoinsTableCompanion extends UpdateCompanion<ActiveCoinsTableData> {
  final Value<String> id;
  final Value<int> rowid;
  const ActiveCoinsTableCompanion({
    this.id = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ActiveCoinsTableCompanion.insert({
    required String id,
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<ActiveCoinsTableData> custom({
    Expression<String>? id,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ActiveCoinsTableCompanion copyWith({Value<String>? id, Value<int>? rowid}) {
    return ActiveCoinsTableCompanion(
      id: id ?? this.id,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActiveCoinsTableCompanion(')
          ..write('id: $id, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final BlockchainCoinDataTable blockchainCoinDataTable =
      BlockchainCoinDataTable(this);
  late final BaseCoinDataTable baseCoinDataTable = BaseCoinDataTable(this);
  late final Index idxBaseCoinDataTicker = Index('idx_base_coin_data_ticker',
      'CREATE INDEX idx_base_coin_data_ticker ON base_coin_data_table (ticker)');
  late final ActiveCoinsTable activeCoinsTable = ActiveCoinsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        blockchainCoinDataTable,
        baseCoinDataTable,
        idxBaseCoinDataTicker,
        activeCoinsTable
      ];
}

typedef $BlockchainCoinDataTableCreateCompanionBuilder
    = BlockchainCoinDataTableCompanion Function({
  required String id,
  Value<String?> contractAddress,
  required int decimals,
  required String balance,
  Value<int> rowid,
});
typedef $BlockchainCoinDataTableUpdateCompanionBuilder
    = BlockchainCoinDataTableCompanion Function({
  Value<String> id,
  Value<String?> contractAddress,
  Value<int> decimals,
  Value<String> balance,
  Value<int> rowid,
});

class $BlockchainCoinDataTableFilterComposer
    extends Composer<_$AppDatabase, BlockchainCoinDataTable> {
  $BlockchainCoinDataTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contractAddress => $composableBuilder(
      column: $table.contractAddress,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get decimals => $composableBuilder(
      column: $table.decimals, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnFilters(column));
}

class $BlockchainCoinDataTableOrderingComposer
    extends Composer<_$AppDatabase, BlockchainCoinDataTable> {
  $BlockchainCoinDataTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contractAddress => $composableBuilder(
      column: $table.contractAddress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get decimals => $composableBuilder(
      column: $table.decimals, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnOrderings(column));
}

class $BlockchainCoinDataTableAnnotationComposer
    extends Composer<_$AppDatabase, BlockchainCoinDataTable> {
  $BlockchainCoinDataTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get contractAddress => $composableBuilder(
      column: $table.contractAddress, builder: (column) => column);

  GeneratedColumn<int> get decimals =>
      $composableBuilder(column: $table.decimals, builder: (column) => column);

  GeneratedColumn<String> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);
}

class $BlockchainCoinDataTableTableManager extends RootTableManager<
    _$AppDatabase,
    BlockchainCoinDataTable,
    BlockchainCoinDataTableData,
    $BlockchainCoinDataTableFilterComposer,
    $BlockchainCoinDataTableOrderingComposer,
    $BlockchainCoinDataTableAnnotationComposer,
    $BlockchainCoinDataTableCreateCompanionBuilder,
    $BlockchainCoinDataTableUpdateCompanionBuilder,
    (
      BlockchainCoinDataTableData,
      BaseReferences<_$AppDatabase, BlockchainCoinDataTable,
          BlockchainCoinDataTableData>
    ),
    BlockchainCoinDataTableData,
    PrefetchHooks Function()> {
  $BlockchainCoinDataTableTableManager(
      _$AppDatabase db, BlockchainCoinDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $BlockchainCoinDataTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $BlockchainCoinDataTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $BlockchainCoinDataTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> contractAddress = const Value.absent(),
            Value<int> decimals = const Value.absent(),
            Value<String> balance = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BlockchainCoinDataTableCompanion(
            id: id,
            contractAddress: contractAddress,
            decimals: decimals,
            balance: balance,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> contractAddress = const Value.absent(),
            required int decimals,
            required String balance,
            Value<int> rowid = const Value.absent(),
          }) =>
              BlockchainCoinDataTableCompanion.insert(
            id: id,
            contractAddress: contractAddress,
            decimals: decimals,
            balance: balance,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $BlockchainCoinDataTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    BlockchainCoinDataTable,
    BlockchainCoinDataTableData,
    $BlockchainCoinDataTableFilterComposer,
    $BlockchainCoinDataTableOrderingComposer,
    $BlockchainCoinDataTableAnnotationComposer,
    $BlockchainCoinDataTableCreateCompanionBuilder,
    $BlockchainCoinDataTableUpdateCompanionBuilder,
    (
      BlockchainCoinDataTableData,
      BaseReferences<_$AppDatabase, BlockchainCoinDataTable,
          BlockchainCoinDataTableData>
    ),
    BlockchainCoinDataTableData,
    PrefetchHooks Function()>;
typedef $BaseCoinDataTableCreateCompanionBuilder = BaseCoinDataTableCompanion
    Function({
  required String id,
  Value<String?> contractAddress,
  required String ticker,
  required String type,
  Value<String?> iconUrl,
  Value<int> rowid,
});
typedef $BaseCoinDataTableUpdateCompanionBuilder = BaseCoinDataTableCompanion
    Function({
  Value<String> id,
  Value<String?> contractAddress,
  Value<String> ticker,
  Value<String> type,
  Value<String?> iconUrl,
  Value<int> rowid,
});

class $BaseCoinDataTableFilterComposer
    extends Composer<_$AppDatabase, BaseCoinDataTable> {
  $BaseCoinDataTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contractAddress => $composableBuilder(
      column: $table.contractAddress,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ticker => $composableBuilder(
      column: $table.ticker, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get iconUrl => $composableBuilder(
      column: $table.iconUrl, builder: (column) => ColumnFilters(column));
}

class $BaseCoinDataTableOrderingComposer
    extends Composer<_$AppDatabase, BaseCoinDataTable> {
  $BaseCoinDataTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contractAddress => $composableBuilder(
      column: $table.contractAddress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ticker => $composableBuilder(
      column: $table.ticker, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get iconUrl => $composableBuilder(
      column: $table.iconUrl, builder: (column) => ColumnOrderings(column));
}

class $BaseCoinDataTableAnnotationComposer
    extends Composer<_$AppDatabase, BaseCoinDataTable> {
  $BaseCoinDataTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get contractAddress => $composableBuilder(
      column: $table.contractAddress, builder: (column) => column);

  GeneratedColumn<String> get ticker =>
      $composableBuilder(column: $table.ticker, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get iconUrl =>
      $composableBuilder(column: $table.iconUrl, builder: (column) => column);
}

class $BaseCoinDataTableTableManager extends RootTableManager<
    _$AppDatabase,
    BaseCoinDataTable,
    BaseCoinDataTableData,
    $BaseCoinDataTableFilterComposer,
    $BaseCoinDataTableOrderingComposer,
    $BaseCoinDataTableAnnotationComposer,
    $BaseCoinDataTableCreateCompanionBuilder,
    $BaseCoinDataTableUpdateCompanionBuilder,
    (
      BaseCoinDataTableData,
      BaseReferences<_$AppDatabase, BaseCoinDataTable, BaseCoinDataTableData>
    ),
    BaseCoinDataTableData,
    PrefetchHooks Function()> {
  $BaseCoinDataTableTableManager(_$AppDatabase db, BaseCoinDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $BaseCoinDataTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $BaseCoinDataTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $BaseCoinDataTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> contractAddress = const Value.absent(),
            Value<String> ticker = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String?> iconUrl = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BaseCoinDataTableCompanion(
            id: id,
            contractAddress: contractAddress,
            ticker: ticker,
            type: type,
            iconUrl: iconUrl,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> contractAddress = const Value.absent(),
            required String ticker,
            required String type,
            Value<String?> iconUrl = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BaseCoinDataTableCompanion.insert(
            id: id,
            contractAddress: contractAddress,
            ticker: ticker,
            type: type,
            iconUrl: iconUrl,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $BaseCoinDataTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    BaseCoinDataTable,
    BaseCoinDataTableData,
    $BaseCoinDataTableFilterComposer,
    $BaseCoinDataTableOrderingComposer,
    $BaseCoinDataTableAnnotationComposer,
    $BaseCoinDataTableCreateCompanionBuilder,
    $BaseCoinDataTableUpdateCompanionBuilder,
    (
      BaseCoinDataTableData,
      BaseReferences<_$AppDatabase, BaseCoinDataTable, BaseCoinDataTableData>
    ),
    BaseCoinDataTableData,
    PrefetchHooks Function()>;
typedef $ActiveCoinsTableCreateCompanionBuilder = ActiveCoinsTableCompanion
    Function({
  required String id,
  Value<int> rowid,
});
typedef $ActiveCoinsTableUpdateCompanionBuilder = ActiveCoinsTableCompanion
    Function({
  Value<String> id,
  Value<int> rowid,
});

class $ActiveCoinsTableFilterComposer
    extends Composer<_$AppDatabase, ActiveCoinsTable> {
  $ActiveCoinsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));
}

class $ActiveCoinsTableOrderingComposer
    extends Composer<_$AppDatabase, ActiveCoinsTable> {
  $ActiveCoinsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));
}

class $ActiveCoinsTableAnnotationComposer
    extends Composer<_$AppDatabase, ActiveCoinsTable> {
  $ActiveCoinsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);
}

class $ActiveCoinsTableTableManager extends RootTableManager<
    _$AppDatabase,
    ActiveCoinsTable,
    ActiveCoinsTableData,
    $ActiveCoinsTableFilterComposer,
    $ActiveCoinsTableOrderingComposer,
    $ActiveCoinsTableAnnotationComposer,
    $ActiveCoinsTableCreateCompanionBuilder,
    $ActiveCoinsTableUpdateCompanionBuilder,
    (
      ActiveCoinsTableData,
      BaseReferences<_$AppDatabase, ActiveCoinsTable, ActiveCoinsTableData>
    ),
    ActiveCoinsTableData,
    PrefetchHooks Function()> {
  $ActiveCoinsTableTableManager(_$AppDatabase db, ActiveCoinsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $ActiveCoinsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $ActiveCoinsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $ActiveCoinsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ActiveCoinsTableCompanion(
            id: id,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<int> rowid = const Value.absent(),
          }) =>
              ActiveCoinsTableCompanion.insert(
            id: id,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $ActiveCoinsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    ActiveCoinsTable,
    ActiveCoinsTableData,
    $ActiveCoinsTableFilterComposer,
    $ActiveCoinsTableOrderingComposer,
    $ActiveCoinsTableAnnotationComposer,
    $ActiveCoinsTableCreateCompanionBuilder,
    $ActiveCoinsTableUpdateCompanionBuilder,
    (
      ActiveCoinsTableData,
      BaseReferences<_$AppDatabase, ActiveCoinsTable, ActiveCoinsTableData>
    ),
    ActiveCoinsTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $BlockchainCoinDataTableTableManager get blockchainCoinDataTable =>
      $BlockchainCoinDataTableTableManager(_db, _db.blockchainCoinDataTable);
  $BaseCoinDataTableTableManager get baseCoinDataTable =>
      $BaseCoinDataTableTableManager(_db, _db.baseCoinDataTable);
  $ActiveCoinsTableTableManager get activeCoinsTable =>
      $ActiveCoinsTableTableManager(_db, _db.activeCoinsTable);
}
