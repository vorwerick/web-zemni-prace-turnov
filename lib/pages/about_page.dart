import 'dart:developer';

import 'package:appwizards_web/components/footer.dart';
import 'package:appwizards_web/components/topbar.dart';
import 'package:appwizards_web/sections/about_section.dart';
import 'package:appwizards_web/sections/contact_section.dart';
import 'package:appwizards_web/sections/hero_section.dart';
import 'package:appwizards_web/sections/references_section.dart';
import 'package:appwizards_web/sections/services_section.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
          AboutSection(),
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
