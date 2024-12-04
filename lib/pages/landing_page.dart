import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zemni_prace/components/footer.dart';
import 'package:zemni_prace/components/topbar.dart';
import 'package:zemni_prace/sections/contact_section.dart';
import 'package:zemni_prace/sections/hero_section.dart';
import 'package:zemni_prace/sections/pricelist_section.dart';
import 'package:zemni_prace/sections/references_section.dart';
import 'package:zemni_prace/sections/services_section.dart';
import 'package:zemni_prace/sections/technique_section.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _controller = ScrollController();

  void scrollToTarget(GlobalKey target) {
    final RenderBox renderBox =
        target.currentContext!.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    _controller.animateTo(
      _controller.offset + position.dy,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    log(width.toString() + "x" + height.toString());
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        children: [
          TopBar(
              key: const Key("topbar"),
              action: (target) {
                scrollToTarget(target);
              }),
          HeroSection(
            key: const Key("hero"),
            contactUs: () {
              scrollToTarget(TopBar.contactKey);
            },
          ),
          ServicesSection(
            key: TopBar.servicesKey,
          ),
          TechniqueSection(key: TopBar.techniqueKey),
          ReferencesSection(key: TopBar.referencesKey),
          PricelistSection(key: TopBar.priceListKey),
          ContactSection(key: TopBar.contactKey),
          Footer(
              key: const Key("footer"),
              action: (target) {
                scrollToTarget(target);
              }),
        ],
      ),
    );
  }
}
