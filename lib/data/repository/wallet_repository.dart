import 'dart:ffi';
import 'dart:typed_data';

import 'package:ed25519_edwards/ed25519_edwards.dart' as ed;
import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';
import 'package:solana_wallet_sample/common/extensions/wallet_extension.dart';
import 'package:solana_wallet_sample/ffigen_output/generated_bindings.dart';

abstract class WalletRepository {
  Pointer<TWHDWallet> createWithMnemonic(String mnemonic, {String passphrase});

  String walletMnemonic({required Pointer<TWHDWallet> wallet});

  String getAddressForCoin({required Pointer<TWHDWallet> wallet, required TWCoinType coinType});

  bool mnemonicIsValid(String mnemonic);

  Uint8List getKeyForCoin({required Pointer<TWHDWallet> wallet, required TWCoinType coinType});

  Uint8List sign(Uint8List message, TWCoinType coin);

  String defaultTokenAddress(String solAddress, String tokenMintAddress);

  void walletDelete(Pointer<TWHDWallet> wallet);
}

class WalletRepositoryImpl implements WalletRepository {
  final TrustWalletCore _core;

  WalletRepositoryImpl({
    required TrustWalletCore core,
  }) : _core = core;

  @override
  Pointer<TWHDWallet> createWithMnemonic(String mnemonic, {String passphrase = ''}) {
    if (!mnemonicIsValid(mnemonic)) {
      throw ArgumentError.value(mnemonic, 'mnemonic', 'Invalid mnemonic');
    }

    final mnemonicPtr = _ptrFromString(mnemonic);
    final passphrasePtr = _ptrFromString(passphrase);

    try {
      final walletPtr = _core.TWHDWalletCreateWithMnemonic(mnemonicPtr, passphrasePtr);
      if (walletPtr == nullptr) {
        throw Exception('Unable to create wallet');
      }
      return walletPtr;
    } finally {
      stringDelete(mnemonicPtr);
      stringDelete(passphrasePtr);
    }
  }

  @override
  String walletMnemonic({required Pointer<TWHDWallet> wallet}) {
    final mnemonicPtr = _core.TWHDWalletMnemonic(wallet);
    final mnemonic = _stringFromPtr(mnemonicPtr);
    stringDelete(mnemonicPtr);

    return mnemonic;
  }

  @override
  String getAddressForCoin({
    required Pointer<TWHDWallet> wallet,
    required TWCoinType coinType,
  }) {
    final ptr = _core.TWHDWalletGetAddressForCoin(wallet, coinType);
    final address = _stringFromPtr(ptr);
    stringDelete(ptr);
    return address;
  }

  @override
  bool mnemonicIsValid(String mnemonic) {
    final ptr = _ptrFromString(mnemonic);
    final isValid = _core.TWMnemonicIsValid(ptr);
    stringDelete(ptr);
    return isValid;
  }

  @override
  Uint8List getKeyForCoin({
    required Pointer<TWHDWallet> wallet,
    required TWCoinType coinType,
  }) {
    final keyPtr = _core.TWHDWalletGetKeyForCoin(wallet, coinType);
    final keyDataPtr = _core.TWPrivateKeyData(keyPtr);
    final len = _core.TWDataSize(keyDataPtr);
    final rawView = _core.TWDataBytes(keyDataPtr).asTypedList(len);
    final bytes = Uint8List.fromList(rawView);

    dataDelete(keyDataPtr);
    privateKeyDelete(keyPtr);

    return bytes;
  }

  @override
  Uint8List sign(Uint8List message, TWCoinType coin) {
    final ptrBytes = message.toPointerUint8();
    final ptrData = _core.TWDataCreateWithBytes(ptrBytes, message.length);
    malloc.free(ptrBytes);

    final dataOut = _core.TWAnySignerSign(ptrData, coin);
    dataDelete(ptrData);

    final len = _core.TWDataSize(dataOut);
    final rawView = _core.TWDataBytes(dataOut).asTypedList(len);
    final signature = Uint8List.fromList(rawView);

    dataDelete(dataOut);

    return signature;
  }

  @override
  String defaultTokenAddress(String solAddress, String tokenMintAddress) {
    final solAddressPtr = _ptrFromString(solAddress);
    final solanaAddressPtr = _core.TWSolanaAddressCreateWithString(solAddressPtr);
    final tokenMintAddressPtr = _ptrFromString(tokenMintAddress);

    try {
      if (solanaAddressPtr == nullptr) {
        throw Exception('Invalid Solana address');
      }
      final ataPtr = _core.TWSolanaAddressDefaultTokenAddress(
        solanaAddressPtr,
        tokenMintAddressPtr,
      );
      try {
        final ata = _stringFromPtr(ataPtr);
        return ata;
      } finally {
        stringDelete(ataPtr);
      }
    } finally {
      _core.TWSolanaAddressDelete(solanaAddressPtr);
      stringDelete(solAddressPtr);
      stringDelete(tokenMintAddressPtr);
    }
  }

  @override
  void walletDelete(Pointer<TWHDWallet> wallet) => _core.TWHDWalletDelete(wallet);

  void stringDelete(Pointer<TWString1> ptr) => _core.TWStringDelete(ptr);

  void privateKeyDelete(Pointer<TWPrivateKey> ptr) => _core.TWPrivateKeyDelete(ptr);

  void dataDelete(Pointer<TWData> ptr) => _core.TWDataDelete(ptr);

  Pointer<TWString1> _ptrFromString(String string) {
    final charPtr = string.toNativeChar();
    final stringPtr = _core.TWStringCreateWithUTF8Bytes(charPtr);
    malloc.free(charPtr);
    return stringPtr;
  }

  String _stringFromPtr(Pointer<TWString1> ptr) => _core.TWStringUTF8Bytes(ptr).toDartString();

  // List<int> _getPrivateKey64(String seed) {
  //   final walletPtr = createWithMnemonic(seed);
  //
  //   // 32-byte secret
  //   final secret32 = getKeyForCoin(
  //     coinType: TWCoinType.TWCoinTypeSolana,
  //     wallet: walletPtr,
  //   ).toList();
  //
  //   // ← public = TWPrivateKeyGetPublicKeyEd25519
  //   final secretData = _core.TWDataCreateWithBytes(secret32.cast<Uint8>().asTypedList(32), 32);
  //   final pkPtr = _core.TWPrivateKeyCreateWithData(secretData);
  //   final pubKeyPtr = _core.TWPrivateKeyGetPublicKeyEd25519(pkPtr);
  //   final pubKey = _core.TWDataBytes(_core.TWPublicKeyData(pubKeyPtr).ref).asTypedList(32);
  //
  //   // cleanup native
  //   _core.TWPrivateKeyDelete(pkPtr);
  //   _core.TWDataDelete(secretData);
  //   walletDelete(walletPtr);
  //
  //   return [...secret32, ...pubKey]; // 64 байта
  // }
}
