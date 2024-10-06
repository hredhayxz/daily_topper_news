import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Wrapper {
  Wrapper._();

  /// For Cached Network image
  static Widget setCachedNetworkImage({
    required String imageUrl,
    double? width,
    double? height,
    BoxFit fit = BoxFit.fill,
    Color placeholderColor = Colors.grey,
    IconData errorIcon = Icons.image,
  }) {
    return CachedNetworkImage(
      width: width,
      height: height,
      fit: fit,
      placeholder: (_, __) => Icon(errorIcon),
      imageUrl: imageUrl,
      errorWidget: (_, __, ___) => Icon(errorIcon),
    );
  }
}
