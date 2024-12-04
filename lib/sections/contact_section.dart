import 'package:flutter/material.dart';
import 'package:zemni_prace/components/card/contact_card.dart';
import 'package:zemni_prace/components/card/descriptive_card.dart';
import 'package:zemni_prace/components/card/reference_card.dart';
import 'package:zemni_prace/components/card/service_card.dart';
import 'package:zemni_prace/components/section.dart';
import 'package:zemni_prace/main.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Section(
      background: App.backgroundLight,
        title: "KONTAKT",
        child: Container(
            child: Wrap(
          children: [
            ContactCard(description: "Pavel Vávra\nKozákov 35\nRadostná pod Kozákovem\n512 63\n\ntel: +420 733 682 880\nemail: podsmrkem@centrum.cz")
          ],
        )));
  }
}
