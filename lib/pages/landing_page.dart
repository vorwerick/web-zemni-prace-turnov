import 'dart:developer';

import 'package:appwizards_web/components/footer.dart';
import 'package:appwizards_web/components/topbar.dart';
import 'package:appwizards_web/sections/about_section.dart';
import 'package:appwizards_web/sections/hero_section.dart';
import 'package:appwizards_web/sections/plain_contact_section.dart';
import 'package:appwizards_web/sections/references_section.dart';
import 'package:appwizards_web/sections/services_section.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  static GlobalKey<State<StatefulWidget>> servicesKey = GlobalKey();
  static GlobalKey<State<StatefulWidget>> contactKey = GlobalKey();
  static GlobalKey<State<StatefulWidget>> priceListKey = GlobalKey();
  static GlobalKey<State<StatefulWidget>> referencesKey = GlobalKey();
  static GlobalKey<State<StatefulWidget>> techniqueKey = GlobalKey();

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _controller = ScrollController();

  void scrollToTarget(GlobalKey target) {
    Scrollable.ensureVisible(
      target.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final sectionHeight = height * 0.9;

    log(width.toString() + "x" + height.toString());
    return ListView(
      controller: _controller,
      children: [
        TopBar(
            key: const Key("topbar"),
            action: (target) {
              scrollToTarget(target);
            }),
        HeroSection(
          key:  Key("hero"),


          contactUs: () {
          },
        ),
        const ServicesSection(
          key: Key("services"),
        ),
        const AboutSection(
          key: Key("about"),
        ),
        const ReferencesSection(
          key: Key("references"),
        ),
        const PlainContactSection(
          key: Key("contact"),
        ),
        Footer(
            key: const Key("footer"),
            action: (target) {
              scrollToTarget(target);
            }),
      ],
    );
  }
}
