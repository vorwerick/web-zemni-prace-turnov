import 'package:appwizards_web/components/web_image.dart';
import 'package:appwizards_web/data/projects.dart';
import 'package:flutter/material.dart';

class ImageSlides extends StatefulWidget {
  final double? width;
  final double? height;
  final List<Img> images;
  final Color backgroundColor1;
  final Color backgroundColor2;

  const ImageSlides(
      {super.key,
      this.width,
      this.height,
      required this.images,
      required this.backgroundColor1,
      required this.backgroundColor2});

  @override
  State<StatefulWidget> createState() {
    return _ImageSlidesState();
  }
}

class _ImageSlidesState extends State<ImageSlides> {
  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [widget.backgroundColor1, widget.backgroundColor2],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft)),
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          FutureBuilder(
              future: Future.value(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return WebImage(
                    imageUrl: widget.images[currentImage].url,
                    description: widget.images[currentImage].description,
                    cover: true,
                  );
                }
                return const SizedBox.shrink();
              }),
        ],
      ),
    );
  }
}
