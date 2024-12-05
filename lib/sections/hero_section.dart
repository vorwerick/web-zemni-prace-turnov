import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zemni_prace/components/section.dart';
import 'package:zemni_prace/components/text/hero_title.dart';
import 'package:zemni_prace/components/web_image.dart';
import 'package:zemni_prace/main.dart';

class HeroSection extends StatelessWidget {
  final Function contactUs;

  const HeroSection({super.key, required this.contactUs});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Section(
        margin: false,
        child: Container(
            height: isSmall ? (height * 0.75) : height * 0.92,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                    width: double.infinity,
                    child: const WebImage(
                        description: "Pásový bagr caterpilar",
                        cover: true,
                        imageUrl: "${App.BASE_PHOTO_URL}/cat/cat-0.jpeg")),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.7)
                  ])),
                  width: double.infinity,
                  height: double.infinity,
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.05),
                  child: const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      HeroTitle(
                          title: "Pomůžeme Vám\ns Vaší stavbou",
                          slogan:
                              "Inženýrské sítě i realizace bazénů\na čistíren odpadních vod")
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin:  EdgeInsets.only(bottom: isSmall?42 : 96),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            elevation: WidgetStatePropertyAll(12),
                            backgroundColor:
                                WidgetStatePropertyAll(App.primaryLight)),
                        onPressed: () {
                          contactUs.call();
                        },

                        child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "Kontaktujte nás",
                              style: GoogleFonts.montserrat(
                                  color: Colors.black, fontSize: isSmall?16:20),
                            ))),
                  ),
                )
              ],
            )));
  }
}
