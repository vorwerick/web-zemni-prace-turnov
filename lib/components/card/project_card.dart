import 'package:appwizards_web/components/image_slides.dart';
import 'package:appwizards_web/components/text/link.dart';
import 'package:appwizards_web/components/text/paragraph.dart';
import 'package:appwizards_web/data/projects.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String subtitle;
  final String description;
  final Widget? icon;
  final List<String> tags;
  final String name;
  final List<Img> images;
  final Color background1;
  final Color background2;
  final List<Act> actions;

  static const double CARD_WIDTH = 800;
  static const double CARD_HEIGHT = 300;
  static const double SMALL_MODIFIER = 1.2;

  const ProjectCard(
      {super.key,
      required this.subtitle,
      required this.description,
      this.icon,
      required this.tags,
      required this.name,
      required this.images,
      required this.background1,
      required this.background2,
      required this.actions});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 3, left: 3),
          padding: EdgeInsets.symmetric(horizontal: isSmall ? 16 : 20),
          width: isSmall ? CARD_WIDTH * SMALL_MODIFIER : CARD_WIDTH,
          height: isSmall ? CARD_HEIGHT * SMALL_MODIFIER : CARD_HEIGHT,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
              color: App.backgroundLight),
        ),
        Container(
            padding: EdgeInsets.symmetric(
                horizontal: isSmall ? 10 : 16, vertical: isSmall ? 10 : 16),
            width: isSmall ? CARD_WIDTH * SMALL_MODIFIER : CARD_WIDTH,
            height: isSmall ? CARD_HEIGHT * SMALL_MODIFIER : CARD_HEIGHT,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(0)),
              gradient: LinearGradient(
                  colors: [App.backgroundDark, App.backgroundDarkest],
                  end: Alignment.topRight,
                  begin: Alignment.bottomCenter),
            ),
            child: content(isSmall)),
      ],
    );
  }

  Widget content(bool isSmall) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Paragraph(
                text: name,
                color: Colors.white,
                fontSize: 22,
              ),
              SizedBox(
                height: 8,
              ),
              Paragraph(
                text: subtitle,
                color: Colors.white,
                fontSize: 18,
              ),
              SizedBox(
                height: 8,
              ),
              Paragraph(
                text: description,
                color: Colors.white,
                fontSize: 14,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      ...actions.map((Act e) => ElevatedButton(
                          onPressed: () {
                            launchUrl(Uri.parse(e.url));
                          },
                          child: Link(text: e.name + " ↗", url: e.url)))
                    ],
                  )
                ],
              )),
            ],
          ),
        ),
        Expanded(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (images.isNotEmpty)
                  ImageSlides(
                      width:
                          (isSmall ? CARD_WIDTH * SMALL_MODIFIER : CARD_WIDTH) /
                              5,
                      height: (isSmall
                          ? (CARD_HEIGHT - 48) * SMALL_MODIFIER
                          : CARD_HEIGHT - 48),
                      images: images,
                      backgroundColor1: background1,
                      backgroundColor2: background2),
              ],
            )
          ],
        ))
      ],
    );
  }
}
