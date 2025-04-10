import 'package:appwizards_web/components/card/contact_card.dart';
import 'package:appwizards_web/components/section.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Section(
        sectionId: "contact",
      height: height,
      background: App.background,
        title: "Kontakt",
        child: Container(
            child: Wrap(
          children: [
            ContactCard(description: "Pavel Vávra\nKozákov 35\nRadostná pod Kozákovem\n512 63\n\ntel: +420 733 682 880\nemail: podsmrkem@centrum.cz")
          ],
        )));
  }
}
