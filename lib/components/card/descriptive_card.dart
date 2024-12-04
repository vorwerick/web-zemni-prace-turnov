import 'package:flutter/material.dart';
import 'package:zemni_prace/components/text/card_title.dart';
import 'package:zemni_prace/components/text/paragraph.dart';
import 'package:zemni_prace/components/web_image.dart';
import 'package:zemni_prace/data/photos/photo_library.dart';
import 'package:zemni_prace/main.dart';

class DescriptiveCard extends StatefulWidget {
  final String title;
  final String description;
  final PhotoLibrary photoLibrary;

  const DescriptiveCard(
      {super.key,
      required this.title,
      required this.description,
      required this.photoLibrary});

  @override
  State<DescriptiveCard> createState() => _DescriptiveCardState();
}

class _DescriptiveCardState extends State<DescriptiveCard> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    final bool smallerThanTablet = MediaQuery.of(context).size.height < 800;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Transform.scale(
      scale: 1,
      child: Stack(
        children: [
          Container(
            width: isSmall ? (width * 0.7) : (width * 0.6),
            height: 400,
            margin: const EdgeInsets.only(top: 4, left: 4),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SizedBox(), SizedBox()],
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Colors.black38),
          ),
          Container(
              width: isSmall ? (width * 0.7) : (width * 0.6),
              height: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                gradient: LinearGradient(
                    colors: [App.backgroundDark, App.backgroundDark],
                    end: Alignment.topLeft,
                    begin: Alignment.bottomRight),
              ),
              child: content(isSmall, width)),
        ],
      ),
    );
  }

  Widget content(bool isSmall, double width) {
    return isSmall
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    title(),
                    const SizedBox(
                      height: 8,
                    ),
                    description(isSmall, width),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              thumbnail(isSmall, width)
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (width * 0.5) / 2,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 42,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      title(),
                      const SizedBox(
                        height: 8,
                      ),
                      description(isSmall, width),
                    ],
                  ),
                ),
              ),
              thumbnail(isSmall, width),
            ],
          );
  }

  Widget title() {
    return CardTitle(text: widget.title);
  }

  Widget description(bool isSmall, double width) {
    return Container(
      child: Paragraph(
        fontSize: 16,
        text: widget.description,
      ),
    );
  }

  Widget thumbnail(bool isSmall, double width) {
    return Container(
      width: isSmall ? double.infinity : (width * 0.5) / 1.65,
      height: isSmall ? 200 : double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(isSmall ? 0 : 6),
            bottomRight: Radius.circular(isSmall ? 6 : 6),
            topLeft: const Radius.circular(0),
            bottomLeft: Radius.circular(isSmall ? 6 : 0)),
      ),
      child: WebImage(
          description: widget.photoLibrary.description,
          cover: true,
          imageUrl: widget.photoLibrary.getPath(widget.photoLibrary.count - 1)),
    );
  }
}
