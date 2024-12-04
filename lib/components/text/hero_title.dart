import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:zemni_prace/main.dart';

class HeroTitle extends StatelessWidget {
  final String title;
  final String slogan;

  const HeroTitle({super.key, required this.title, required this.slogan});

  @override
  Widget build(BuildContext context) {
    double fontSize = 64;
    if (App.isTablet(context)) {
      fontSize = 48;
    }
    if (App.isMobile(context)) {
      fontSize = 36;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextRenderer(
          text: title,
          child: SelectableText(
            title,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: fontSize,
                letterSpacing: 2,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.end,
          ),
        ),
        TextRenderer(
          text: slogan,
          child: SelectableText(
            slogan,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: fontSize / 2,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
