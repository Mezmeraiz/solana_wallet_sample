import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/di/factory/bloc_factory.dart';
import 'package:solana_wallet_sample/di/factory/database_factory.dart';
import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';
import 'package:solana_wallet_sample/di/factory/domain_service_factory.dart';
import 'package:solana_wallet_sample/di/factory/network_factory.dart';
import 'package:solana_wallet_sample/di/factory/repository_factory.dart';

class DependencyScope extends StatefulWidget {
  final DependencyFactory dependenciesFactory;
  final BlocFactory blocFactory;
  final RepositoryFactory repositoryFactory;
  final ServiceFactory serviceFactory;
  final NetworkFactory networkFactory;
  final DatabaseFactory databaseFactory;
  final Widget child;

  const DependencyScope({
    super.key,
    required this.dependenciesFactory,
    required this.repositoryFactory,
    required this.blocFactory,
    required this.serviceFactory,
    required this.networkFactory,
    required this.databaseFactory,
    required this.child,
  });

  @override
  State<DependencyScope> createState() => _DependencyScopeState();

  static DependencyFactory getDependenciesFactory(BuildContext context) => _scopeOf(context).dependenciesFactory;

  static BlocFactory getBlocFactory(BuildContext context) => _scopeOf(context).blocFactory;

  static RepositoryFactory getRepositoryFactory(BuildContext context) => _scopeOf(context).repositoryFactory;

  static ServiceFactory getDomainServiceFactory(BuildContext context) => _scopeOf(context).serviceFactory;

  static NetworkFactory getNetworkFactory(BuildContext context) => _scopeOf(context).networkFactory;

  static DatabaseFactory getDatabaseFactory(BuildContext context) => _scopeOf(context).databaseFactory;

  static DependencyScope _scopeOf(BuildContext context) =>
      (context.getElementForInheritedWidgetOfExactType<_InheritedDependencyScope>()!.widget
              as _InheritedDependencyScope)
          .state
          .widget;
}

class _DependencyScopeState extends State<DependencyScope> {
  @override
  Widget build(BuildContext context) => _InheritedDependencyScope(
        state: this,
        child: widget.child,
      );

  @override
  void dispose() {
    widget.dependenciesFactory.dispose();

    super.dispose();
  }
}

class _InheritedDependencyScope extends InheritedWidget {
  final _DependencyScopeState state;

  const _InheritedDependencyScope({
    required super.child,
    required this.state,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
