import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/di/dependency_scope.dart';
import 'package:solana_wallet_sample/feature/app/app.dart';
import 'package:solana_wallet_sample/feature/initialization/bloc/initialization_bloc.dart';
import 'package:solana_wallet_sample/feature/initialization/bloc/initialization_helper.dart';
import 'package:solana_wallet_sample/ffigen_output/generated_bindings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final core = TrustWalletCore(DynamicLibrary.open('libTrustWalletCore.dylib'));

  final initializationBloc = InitializationBloc(initializationHelper: InitializationHelperImpl(core: core))
    ..add(const InitializationEvent.init());

  initializationBloc.stream.listen(
    (state) async {
      final result = state.initializationResult;
      if (result != null) {
        runApp(
          DependencyScope(
            dependenciesFactory: result.dependenciesFactory,
            blocFactory: result.blocFactory,
            repositoryFactory: result.repositoryFactory,
            domainServiceFactory: result.domainServiceFactory,
            networkFactory: result.networkFactory,
            child: const App(),
          ),
        );
      }
    },
  );
}
