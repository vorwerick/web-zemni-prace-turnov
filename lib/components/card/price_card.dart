import 'package:flutter/material.dart';
import 'package:zemni_prace/components/text/card_title.dart';
import 'package:zemni_prace/components/text/paragraph.dart';
import 'package:zemni_prace/main.dart';

class PriceCard extends StatelessWidget {
  final String title;
  final String description;

  const PriceCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 4, left: 4),
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: isSmall ? 480 : 220,
          height: isSmall ? 120 : 240,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: App.backgroundDarkest),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: isSmall?12:20, vertical:isSmall ? 14: 24),
          width: isSmall ? 480 : 220,
          height: isSmall ? 120 : 240,
          decoration: BoxDecoration(
            //  border: Border.all(color: App.primaryLight),
            borderRadius: BorderRadius.all(Radius.circular(6)),
            gradient: LinearGradient(
                colors: [App.primaryLight, App.primaryDark],
                end: Alignment.bottomRight,
                begin: Alignment.topLeft),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Paragraph(
                fontSize: 18,
                text: title,
              ),
              CardTitle(text: description)
            ],
          ),
        ),
      ],
    );
  }
}
