import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/landing_page.dart';

class TopBar extends StatelessWidget {
  final Function(GlobalKey) action;

  TopBar({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = App.isTablet(context) || App.isMobile(context);
    return Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(bottom: BorderSide(color: Colors.blueGrey))),
        height: isSmall ? 48 : 64,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 32,
                ),
                Image.asset(
                  key: const Key("top-logo"),
                  "assets/potion_dark_128.png",
                  height: isSmall ? 32 : 42,
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    Text(
                      "APP",
                      style: GoogleFonts.montserrat(
                        fontSize: isSmall ? 15 : 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "WIZARDS",
                      style: GoogleFonts.montserrat(
                          fontSize: isSmall ? 15 : 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            () {
              /*
              if (App.isTablet(context) || App.isMobile(context)) {
                return Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(child: menu(context));
                            });
                      },
                      icon: const Icon(Icons.menu),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                  ],
                );
              }


             */
              //return menuInline();
              return SizedBox();
            }()
          ],
        ));
  }

  Widget menuInline() {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              action.call(LandingPage.servicesKey);
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
            },
            child: Text(
              "Projekty",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 14),
            )),
        TextButton(
            onPressed: () {
              action.call(LandingPage.priceListKey);
            },
            child: Text(
              "Kontakt",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 14),
            )),
        const SizedBox(
          width: 8,
        ),
        ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(App.primary)),
            onPressed: () {
              action.call(LandingPage.contactKey);
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Kontakt",
                  style:
                      GoogleFonts.montserrat(color: Colors.white, fontSize: 14),
                ))),
        const SizedBox(
          width: 32,
        ),
      ],
    );
  }

  Widget menu(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                icon: const Icon(Icons.close))
          ],
        ),
        const SizedBox(
          height: 16,
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
                  color: Colors.black,
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
                  color: Colors.black,
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
                  color: Colors.black,
                  fontSize: 14),
            )),
        TextButton(
            onPressed: () {
              action.call(LandingPage.priceListKey);
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text(
              "Kontakt",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 14),
            )),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
