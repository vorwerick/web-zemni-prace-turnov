import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:zemni_prace/main.dart';

class Paragraph extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;

  const Paragraph({super.key, required this.text, this.fontSize, this.color});

  @override
  Widget build(BuildContext context) {
    double fontSize = this.fontSize ?? 16;
    if (App.isTablet(context)) {
      fontSize /= 1.1;
    }
    if (App.isMobile(context)) {
      fontSize /= 1.2;
    }
    return TextRenderer(
      text: text,
      child: SelectableText(
        text,
        style: GoogleFonts.montserrat(
            fontSize: fontSize, fontWeight: FontWeight.w400, color: color),
      ),
    );
  }
}