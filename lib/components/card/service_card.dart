import 'package:appwizards_web/components/text/card_title.dart';
import 'package:appwizards_web/components/text/paragraph.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';
class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget icon;

  const ServiceCard(
      {super.key,
      required this.title,
      required this.description,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 3, left:3),
          padding: EdgeInsets.symmetric(horizontal: isSmall? 16: 20),
          width: isSmall ? 540 : 280,
          height: isSmall ? 200 : 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
              color: App.backgroundLight),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal:isSmall? 16:  20),
            width: isSmall ? 540 : 280,
            height: isSmall ? 200 : 400,
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
    if (isSmall) {
      return Column(
        children: [
          SizedBox(
            height: isSmall ? 4 : 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              CardTitle(
                text: title,
              ),
              Container(
                width: isSmall ? 32 : 64,
                child: icon,
              ),

            ],
          ),
          SizedBox(
            height: isSmall ? 8 : 24,
          ),
          Paragraph(
            text: description,
            fontSize: 16,
            color: Colors.white,
          ),
          SizedBox(
            height: isSmall ? 8 : 32,
          ),
        ],
      );
    }
    return Column(
      children: [
        SizedBox(
          height: isSmall ? 16 : 32,
        ),
        Container(
          width: isSmall ? 42 : 64,
          child: icon,
        ),
        SizedBox(
          height: isSmall ? 14 : 24,
        ),
        CardTitle(
          text: title,
        ),
        SizedBox(
          height: isSmall ? 14 : 24,
        ),
        Paragraph(
          text: description,
          color: Colors.white,
          fontSize: 14,
        ),
        SizedBox(
          height: isSmall ? 24 : 32,
        ),
      ],
    );
  }
}
