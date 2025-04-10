import 'package:appwizards_web/components/text/link.dart';
import 'package:appwizards_web/components/topbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../pages/landing_page.dart';

class Footer extends StatelessWidget {
  final Function(GlobalKey) action;

  const Footer({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        children: [menu(context), madeBy(context)],
      ),
    );
  }

  Widget menu(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 28,
        ),
        TextButton(
            onPressed: () {
              action.call(LandingPage.servicesKey);
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text(
              "Služby",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 14),
            )),
        TextButton(
            onPressed: () {
              action.call(LandingPage.techniqueKey);
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text(
              "O nás",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )),
        TextButton(
            onPressed: () {
              action.call(LandingPage.referencesKey);
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text(
              "Projekty",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 14),
            )),


        const SizedBox(
          height: 32,
        ),
      ],
    );
  }

  Widget madeBy(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 32,
        ),
        Link(
            text: "Webdesign Appwizards",
            color: Colors.white,
            url: 'https://appwizards.cz',
            fontSize: 14),

        SizedBox(
          height: 48,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Vývoj mobilních aplikací\n© 2024 Všechna práva vyhrazena",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(width: 32,),
            Image.asset(
              "assets/potion_dark_128.png",
              height: 64,
            ),
          ],
        ),
        SizedBox(
          height: 32,
        ),
      ],
    );
  }

  Widget contact(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 32,
        ),
        Text(
          "Pavel Vávra",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Kozákov 35\nRadostná pod Kozákovem\n512 63",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "IČO: 73657069",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
