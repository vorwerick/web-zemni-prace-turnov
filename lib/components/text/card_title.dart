import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

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

    return ShaderMask(
        shaderCallback: (bounds) {
          return LinearGradient(
            colors: [Colors.blue, Colors.purple],
            tileMode: TileMode.mirror,
          ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
        },
        child: TextRenderer(
          text: text,
          child: SelectableText(
            text,
            style:
            GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: fontSize, color: Colors.white),
          ),
        )
    );
  }
}
