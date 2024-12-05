import 'package:flutter/material.dart';
import 'package:zemni_prace/components/text/card_title.dart';
import 'package:zemni_prace/components/text/paragraph.dart';
import 'package:zemni_prace/main.dart';

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
          margin: EdgeInsets.only(top: 4, left: 4),
          padding: EdgeInsets.symmetric(horizontal: isSmall? 16: 20),
          width: isSmall ? 540 : 280,
          height: isSmall ? 200 : 320,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: App.backgroundDarkest),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal:isSmall? 16:  20),
            width: isSmall ? 540 : 280,
            height: isSmall ? 200 : 320,
            decoration: BoxDecoration(
              //  border: Border.all(color: App.primaryLight),
              borderRadius: BorderRadius.all(Radius.circular(6)),
              gradient: LinearGradient(
                  colors: [App.primaryLight, App.primaryDark],
                  end: Alignment.bottomRight,
                  begin: Alignment.topLeft),
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
          fontSize: 16,
        ),
        SizedBox(
          height: isSmall ? 24 : 32,
        ),
      ],
    );
  }
}
