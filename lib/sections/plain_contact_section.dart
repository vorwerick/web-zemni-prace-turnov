import 'package:appwizards_web/components/section.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';

class PlainContactSection extends StatelessWidget {
  const PlainContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Section(
        sectionId: "about",
        height: isSmall ? height * 0.6 : height * 0.60,
        background: App.primary.withOpacity(0.6),
        justifyText: false,
        title: "Napište nám",
        description: """Appwizards spol. s r. o.
Chudenická 1059/30
10200 Praha - Hostivař

IČO: 19168985
DIČ: CZ19168985

tel: +420 731 591 160
email: info@appwizards.cz""",
        child: Container());
  }
}
