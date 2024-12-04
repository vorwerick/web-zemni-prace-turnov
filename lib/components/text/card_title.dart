import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:zemni_prace/main.dart';

class CardTitle extends StatelessWidget {
  final String text;

  const CardTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    double fontSize = 20;
    if (App.isTablet(context)) {
       fontSize = 18;
    }
    if (App.isMobile(context)) {
       fontSize = 16;
    }

    return TextRenderer(
      text: text,
      child: SelectableText(
        text,
        style:
            GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: fontSize),
      ),
    );
  }
}
