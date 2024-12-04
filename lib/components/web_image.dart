import 'dart:html' as html;
import 'dart:ui_web' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WebImage extends StatelessWidget {
  final String imageUrl;
  final String description;
  final bool? cover;
  final double? width;
  final double? height;

  const WebImage(
      {super.key, required this.imageUrl, this.cover, this.width, this.height, required this.description});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      // Vytvoření HTML <img> elementu
      final imageElement = html.ImageElement()
        ..src = imageUrl
        ..alt = description
        ..style.width = width != null ? width.toString() : '100%'
        ..style.height = height != null ? height.toString() : '100%';
      if (cover == true) {
        imageElement.style.setProperty('object-fit', 'cover');
      } else {
        imageElement.style.setProperty('object-fit', 'contain');
      }

      // Registrace elementu jako ViewType
      final String viewType = 'image-html-${imageUrl.hashCode}';
      ui.platformViewRegistry
          .registerViewFactory(viewType, (int viewId) => imageElement);

      // Zobrazení pomocí HtmlElementView
      return HtmlElementView(
        viewType: viewType,
      );
    }
    return SizedBox.shrink();
  }
}
