import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class SectionTitle extends StatelessWidget {
  final String text;

  const SectionTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    double fontSize = 38;
    if (App.isTablet(context)) {
      fontSize = 32;
    }
    if (App.isMobile(context)) {
      fontSize = 26;
    }

    return Column(
      children: [
        TextRenderer(
          text: text,
          child: Container(

            child: SelectableText(
              text,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize),
            ),
          ),
        ),
      ],
    );
  }
}
