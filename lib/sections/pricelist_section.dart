import 'package:appwizards_web/components/card/price_card.dart';
import 'package:appwizards_web/components/section.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';

class PricelistSection extends StatelessWidget {
  const PricelistSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Section(
      height: height,
        sectionId: "pricelist",
        background: App.background,
        title: "CENÍK",
        child: Container(
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              spacing: 24,
              runSpacing: 24,
              crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            PriceCard(
                title: "Zemní a výkopové práce technikou",
                description: "850 Kč/h",),
            PriceCard(
              title: "Doprava techniky k Vám (cesta tam i zpět)",
              description: "40 Kč/km",),
            PriceCard(
              title: "Realizace stavebního projektu na míru",
              description: "Na dotaz",)
          ],
        )));
  }
}
