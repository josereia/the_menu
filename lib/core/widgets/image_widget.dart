import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';

class ImageWidget extends StatelessWidget with ThemeMixin {
  const ImageWidget({
    required this.uri,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.borderRadius,
    super.key,
  });

  final String uri;
  final BoxFit fit;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics(context);

    ImageProvider provider = NetworkImage(uri);
    if (uri.contains('assets')) {
      provider = AssetImage(uri);
    }

    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.all(metrics.radius),
      child: Image(
        width: width,
        height: height,
        image: provider,
        fit: fit,
      ),
    );
  }
}
