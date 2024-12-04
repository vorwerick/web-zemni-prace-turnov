import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zemni_prace/main.dart';

class TopBar extends StatelessWidget {
  static GlobalKey<State<StatefulWidget>> servicesKey = GlobalKey();
  static GlobalKey<State<StatefulWidget>> contactKey = GlobalKey();
  static GlobalKey<State<StatefulWidget>> priceListKey = GlobalKey();
  static GlobalKey<State<StatefulWidget>> referencesKey = GlobalKey();
  static GlobalKey<State<StatefulWidget>> techniqueKey = GlobalKey();

  final Function(GlobalKey) action;

  const TopBar({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    final bool isSmall = App.isTablet(context) || App.isMobile(context);
    return Container(
        decoration: const BoxDecoration(
          color: App.primary,
        ),
        height: isSmall ? 56 : 72,
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
                  key: const Key("white-logo"),
                  "assets/logo4.png",
                  height: isSmall ? 32 : 52,
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PAVEL VÁVRA",
                      style: GoogleFonts.montserrat(
                          fontSize: isSmall ? 17 : 24,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 3),
                    ),
                    Text(
                      "ZEMNÍ A STAVEBNÍ PRÁCE",
                      style: GoogleFonts.montserrat(
                          fontSize: isSmall ? 10 : 14,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),
            () {
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
              return menuInline();
            }()
          ],
        ));
  }

  Widget menuInline() {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              action.call(servicesKey);
            },
            child: Text(
              "SLUŽBY",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 14),
            )),
        TextButton(
            onPressed: () {
              action.call(techniqueKey);
            },
            child: Text(
              "TECHNIKA",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )),
        TextButton(
            onPressed: () {
              action.call(referencesKey);
            },
            child: Text(
              "REALIZACE",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 14),
            )),
        TextButton(
            onPressed: () {
              action.call(priceListKey);
            },
            child: Text(
              "CENÍK",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 14),
            )),
        const SizedBox(
          width: 8,
        ),
        ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black)),
            onPressed: () {
              action.call(contactKey);
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "KONTAKT",
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
              action.call(servicesKey);
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text(
              "SLUŽBY",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 14),
            )),
        TextButton(
            onPressed: () {
              action.call(techniqueKey);
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text(
              "TECHNIKA",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )),
        TextButton(
            onPressed: () {
              action.call(referencesKey);
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text(
              "REALIZACE",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 14),
            )),
        TextButton(
            onPressed: () {
              action.call(priceListKey);
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text(
              "CENÍK",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 14),
            )),
        TextButton(
            onPressed: () {
              action.call(contactKey);
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text(
              "KONTAKT",
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
