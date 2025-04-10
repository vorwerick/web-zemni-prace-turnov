import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/link_renderer/link_renderer_vm.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final String url;

  const Link(
      {super.key,
      required this.text,
      this.fontSize,
      this.color,
      required this.url});

  @override
  Widget build(BuildContext context) {
    double fontSize = this.fontSize ?? 16;
    if (App.isTablet(context)) {
      fontSize /= 1.1;
    }
    if (App.isMobile(context)) {
      fontSize /= 1.2;
    }
    return LinkRenderer(
        text: text,
        href: url,
        child: InkWell(
          onTap: () {
            launchUrl(Uri.parse(url));
          },
          child: Text(
            text,
            style: GoogleFonts.montserrat(
                fontSize: fontSize, fontWeight: FontWeight.w400, color: color,),
          ),
        ));
  }
}
