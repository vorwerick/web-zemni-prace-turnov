import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

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
      fontSize = 28;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextRenderer(
          text: title,
          child: SelectableText(
            title,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.start,
          ),
        ),
        TextRenderer(
          text: slogan,
          child: SelectableText(
            slogan,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: fontSize / 2,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
