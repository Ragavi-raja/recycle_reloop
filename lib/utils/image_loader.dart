import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

class ImageLoader {
  static Future<ui.Image?> loadImage(String path) async {
    try {
      final ByteData data = await rootBundle.load(path);
      final ui.Codec codec =
          await ui.instantiateImageCodec(data.buffer.asUint8List());
      final ui.FrameInfo frameInfo = await codec.getNextFrame();
      return frameInfo.image;
    } catch (e) {
      debugPrint('Error loading image: $e');
      return null;
    }
  }

  static Widget buildImageWidget({
    required String path,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Widget? placeholder,
    Widget? errorWidget,
  }) {
    return FutureBuilder<ui.Image?>(
      future: loadImage(path),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return placeholder ?? const CircularProgressIndicator();
        }

        if (snapshot.hasError || !snapshot.hasData) {
          return errorWidget ?? const Icon(Icons.error);
        }

        return RawImage(
          image: snapshot.data,
          width: width,
          height: height,
          fit: fit,
        );
      },
    );
  }
}
