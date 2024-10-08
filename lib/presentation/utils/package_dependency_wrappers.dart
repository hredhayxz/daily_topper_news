import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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
      placeholder: (_, __) => setShimmerEffect(height: height, width: width),
      imageUrl: imageUrl,
      errorWidget: (_, __, ___) => Icon(errorIcon),
    );
  }

  /// For Shimmer effect
  static Widget setShimmerEffect({
    double? width,
    double? height,
    Color placeholderColor = Colors.grey,
  }) {
    return Shimmer.fromColors(
      baseColor: placeholderColor,
      highlightColor: Colors.white,
      child: Container(
        width: width ?? 17,
        height: height ?? 4,
        color: placeholderColor,
      ),
    );
  }
}
