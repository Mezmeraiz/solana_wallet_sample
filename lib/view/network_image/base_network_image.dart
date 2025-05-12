import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:solana_wallet_sample/view/network_image/error_place_holder.dart';
import 'package:solana_wallet_sample/view/network_image/loading_place_holder.dart';

class BaseNetworkImage extends StatelessWidget {
  final String? imageUrl;
  final double? width;
  final double? height;
  final LoadingErrorWidgetBuilder? errorWidgetBuilder;
  final Widget? placeholder;
  final BoxFit fit;

  const BaseNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.errorWidgetBuilder,
    this.placeholder,
    this.width,
    this.height,
  });

  const BaseNetworkImage.square({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.errorWidgetBuilder,
    this.placeholder,
    required double size,
  })  : width = size,
        height = size;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;

    return url != null
        ? CachedNetworkImage(
            cacheManager: CacheManager(
              Config(
                'image',
                stalePeriod: const Duration(days: 2),
              ),
            ),
            fit: fit,
            imageUrl: url,
            width: width,
            height: height,
            placeholder: (context, url) => const LoadingPlaceHolder(),
            errorWidget: errorWidgetBuilder ?? (context, url, error) => const ErrorPlaceHolder(),
          )
        : placeholder ?? const ErrorPlaceHolder();
  }
}
