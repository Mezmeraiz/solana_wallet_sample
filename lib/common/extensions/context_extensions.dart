import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/di/dependency_scope.dart';
import 'package:solana_wallet_sample/di/factory/bloc_factory.dart';
import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';
import 'package:solana_wallet_sample/di/factory/domain_service_factory.dart';
import 'package:solana_wallet_sample/di/factory/network_factory.dart';
import 'package:solana_wallet_sample/di/factory/repository_factory.dart';

extension DependencyExtension on BuildContext {
  DependencyFactory get dependencyFactory => DependencyScope.getDependenciesFactory(this);

  RepositoryFactory get repositoryFactory => DependencyScope.getRepositoryFactory(this);

  BlocFactory get blocFactory => DependencyScope.getBlocFactory(this);

  ServiceFactory get domainServiceFactory => DependencyScope.getDomainServiceFactory(this);

  NetworkFactory get networkFactory => DependencyScope.getNetworkFactory(this);
}

extension NavigatorExtension on BuildContext {
  void pop<T extends Object?>({
    T? result,
    bool rootNavigator = false,
  }) {
    final scaffoldMessenger = ScaffoldMessenger.of(this);
    if (scaffoldMessenger.mounted) {
      scaffoldMessenger.removeCurrentSnackBar();
    }

    Navigator.of(this, rootNavigator: rootNavigator).pop(result);
  }

  void popUntilFirst({bool rootNavigator = false}) => popUntil(until: (route) => route.isFirst);

  void popUntil({
    required RoutePredicate until,
    bool rootNavigator = false,
  }) =>
      Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).popUntil(until);

  Future<T?> push<T extends Object?>(
    Widget widget, {
    RouteSettings? settings,
    bool rootNavigator = false,
    Widget Function(BuildContext context, Widget child)? builder,
  }) =>
      Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).push(
        MaterialPageRoute(
          settings: settings,
          builder: (context) {
            if (builder != null) return builder(context, widget);

            return widget;
          },
        ),
      );

  Future<T?> pushReplacement<T extends Object?>(
    Widget widget, {
    RouteSettings? settings,
    bool rootNavigator = false,
    Widget Function(BuildContext context, Widget child)? builder,
  }) =>
      Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushReplacement(
        PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation1, animation2) {
            if (builder != null) return builder(context, widget);

            return widget;
          },
        ),
      );

  Future<T?> pushAndRemoveUntilFirst<T extends Object?>(
    Widget widget, {
    RouteSettings? settings,
    bool rootNavigator = false,
    Widget Function(BuildContext context, Widget child)? builder,
  }) =>
      Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushAndRemoveUntil(
        PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation1, animation2) {
            if (builder != null) return builder(context, widget);

            return widget;
          },
        ),
        (route) => false,
      );
}

extension BuildContextShowSnackBar on BuildContext {
  void showSnackBar({
    required String message,
    TextAlign? textAlign,
    bool hasError = false,
  }) =>
      ScaffoldMessenger.of(this)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              message,
              textAlign: textAlign,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
          ),
        );
}
