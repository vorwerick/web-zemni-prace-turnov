import 'package:flutter/material.dart';
import 'package:zemni_prace/pages/landing_page.dart';

void main() {
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

  static const Color primaryLight = Color(0xFFf2984c);
  static const Color primary = Color(0xFFF08C38);
  static const Color primaryDark = Color(0xFFd87e32);

  static const Color backgroundDarkest = Color(0xFFBFA49C);
  static const Color backgroundDark = Color(0xFFe7ddda);
  static const Color backgroundLight = Color(0xFFf7f4f3);
  static const Color background = Color(0xFFf0eae8);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Zemní a stavební práce',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: App.primary),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const Material(
          child: LandingPage(key: Key("root"),),
        ));
  }
}
