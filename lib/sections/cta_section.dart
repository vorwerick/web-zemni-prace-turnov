import 'package:appwizards_web/components/card/contact_card.dart';
import 'package:appwizards_web/components/section.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';

class CtaSection extends StatelessWidget {
  const CtaSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Section(
      height: height,
        sectionId: "cta",
      background: App.background,
        title: "Ozvěte se nám",
        child: Container(
            child: Wrap(
          children: [
            ContactCard(description: "Pavel Vávra\nKozákov 35\nRadostná pod Kozákovem\n512 63\n\ntel: +420 733 682 880\nemail: podsmrkem@centrum.cz")
          ],
        )));
  }
}
