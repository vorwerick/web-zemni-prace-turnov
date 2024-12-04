import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:zemni_prace/main.dart';

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
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: App.primary, width: 6))),
            child: SelectableText(
              text,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w800,
                  fontSize: fontSize),
            ),
          ),
        ),
      ],
    );
  }
}
