import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../res/values_manager.dart';
import '../../pages/ui_loading.dart';
//


class UiImageNetwork extends StatelessWidget {
  const UiImageNetwork(
    this.imageUrl, {
    super.key,
    this.fit,
    this.width,
    this.color,
    this.errorWidget,
    this.placeholder,
  });
  final String imageUrl;
  final BoxFit? fit;
  final double? width;
  final Color? color;
  final LoadingErrorWidgetBuilder? errorWidget;
  final PlaceholderWidgetBuilder? placeholder;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit ?? BoxFit.fill,
      color: color,
      height: width ?? AppSizes.SIZE_48,
      width: width ?? AppSizes.SIZE_48,
      placeholder: placeholder ?? (context, url) => const UiLoading(),
      errorWidget: errorWidget ??
          (context, url, error) => const Icon(
                Icons.image_not_supported_outlined,
              ),
    );
  }
}
