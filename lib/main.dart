import 'package:appwizards_web/pages/about_page.dart';
import 'package:appwizards_web/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  setPathUrlStrategy();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1150 &&
        MediaQuery.of(context).size.width >= 750;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 750;
  }

  static const String BASE_PHOTO_URL = "http://dzubera.cz/photos-zemni-prace";

  static const Color primaryLight = Color(0xFFd90e0e);
  static const Color primary = Color(0xFFd90e0e);
  static const Color secondary = Color(0xFF8f0ad7);
  static const Color primaryDark = Color(0xFFd90e0e);

  static const Color backgroundDarkest = Color(0xFF010101);
  static const Color backgroundDark = Color(0xFF232323);
  static const Color backgroundLight = Color(0xFF454545);
  static const Color background = Color(0xFFf0eae8);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vývoj mobilních aplikací',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // Definice tras
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return MaterialPageRoute(
                builder: (c) => Material(
                      child: LandingPage(
                        key: Key("root"),
                      ),
                    ));
          default:
            return MaterialPageRoute(
                builder: (c) => Material(child: AboutPage()));
        }
      },
    );
  }
}
