import 'package:appwizards_web/components/section.dart';
import 'package:appwizards_web/components/text/hero_title.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';

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
        sectionId: "hero",
        height: isSmall ? (height * 0.65) : height,
        child: Container(
            height: isSmall ? (height * 0.65) : height,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [App.primary, App.secondary],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  width: double.infinity,
                  height: double.infinity,

                  /*
                    child: const WebImage(
                        description: "Vývoj mobilních aplikací",
                        cover: true,
                        imageUrl: "http://dzubera.cz/photos-appwizards/hero.png")

                     */
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                  width: double.infinity,
                  height: double.infinity,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HeroTitle(
                          title: "Digitalizujeme\nVáš byznys",
                          slogan: "Vývoj mobilních a webových aplikací na míru")
                    ],
                  ),
                ),
                /*
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: isSmall ? 42 : 96),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            elevation: WidgetStatePropertyAll(12),
                            backgroundColor:
                                WidgetStatePropertyAll(App.secondary)),
                        onPressed: () {
                          contactUs.call();
                        },
                        child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "Poptat",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: isSmall ? 16 : 20),
                            ))),
                  ),
                )

                 */
              ],
            )));
  }
}
