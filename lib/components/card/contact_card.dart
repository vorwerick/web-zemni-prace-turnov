import 'package:appwizards_web/components/text/paragraph.dart';
import 'package:appwizards_web/components/web_image.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactCard extends StatefulWidget {
  final String description;

  const ContactCard({
    super.key,
    required this.description,
  });

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Wrap(
      runSpacing: 16,
      spacing: 16,
      children: [
        map(width, isSmall),
        contact(width, isSmall),
      ],
    );
  }

  Widget map(double width, bool isSmall) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: isSmall ? 300 : 400,
          margin: const EdgeInsets.only(top: 4, left: 4),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [SizedBox(), SizedBox()],
          ),
        ),
        Container(
          width: 500,
          height: isSmall ? 300 : 400,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            gradient: LinearGradient(
                colors: [App.backgroundDark, App.backgroundDark],
                end: Alignment.topLeft,
                begin: Alignment.bottomRight),
          ),
          child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: Stack(
                children: [
                  WebImage(
                    description: "Mapa Turnov",
                    height: isSmall ? 300 : 400,
                    width: 500,
                    cover: true,
                    imageUrl: "${App.BASE_PHOTO_URL}/common/map.png",
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton(
                          onPressed: () {
                            launchUrlString(
                                "https://maps.app.goo.gl/WRWyTCZeCBAvEkc38");
                          },
                          child: const Text("Zobrazit mapu")),
                    ),
                  )
                ],
              )),
        ),
      ],
    );
  }

  Widget contact(double width, bool isSmall) {
    return Stack(
      children: [
        Container(
          width: 500,
          height: isSmall ? 300 : 400,
          margin: const EdgeInsets.only(top: 4, left: 4),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [SizedBox(), SizedBox()],
          ),
        ),
        Container(
          width: 500,
          height: isSmall ? 300 : 400,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            gradient: LinearGradient(
                colors: [App.backgroundDark, App.backgroundDark],
                end: Alignment.topLeft,
                begin: Alignment.bottomRight),
          ),
          child: Container(
            margin: EdgeInsets.all(isSmall ? 24 : 48),
            child: Paragraph(
              text: widget.description,
              fontSize: isSmall ? 16 : 20,
            ),
          ),
        ),
      ],
    );
  }
}
