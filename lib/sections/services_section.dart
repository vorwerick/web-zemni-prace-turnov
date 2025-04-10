import 'package:appwizards_web/components/card/service_card.dart';
import 'package:appwizards_web/components/gradient_icon.dart';
import 'package:appwizards_web/components/section.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Section(
        sectionId: "services",
        background: App.background,
        title: "Služby",
        description:
            "Nabízíme vývoj softwarových řešení na míru pro všechny platformy. Také jsme schopni navrhnout specifické řešení v oblasti IoT technologií, která usnadní a zefektivní váš byznys.",
        height: isSmall ? height * 1.35 : height * 0.94,
        child: Container(
            child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          spacing: isSmall ? 12 : 24,
          runSpacing: isSmall ? 12 : 24,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ServiceCard(
                title: "Mobilní aplikace",
                description:
                    "Postaráme se o vše od návrhu designu až po publikaci vaší aplikace v App Store a Google Play. Vytváříme řešení na míru, která skvěle vypadají, snadno se používají a přináší hodnotu vašim uživatelům.",
                icon: GradientIcon(
                  icon: Icons.phone_android,
                  size: 64,
                )),
            ServiceCard(
                title: "Webové aplikace",
                description:
                    "Vytváříme webové aplikace a systémy na míru, které zjednodušují vaše podnikání a zlepšují komunikaci se zákazníky. Od návrhu až po spuštění klademe důraz na funkčnost a přehlednost, aby vše odpovídalo vašim potřebám.",
                icon: GradientIcon(
                  icon: Icons.web,
                  size: 64,
                )),
            ServiceCard(
                title: "AI pro Váš byznys",
                description:
                    "Navrhujeme a implementujeme AI řešení, která zefektivní vaše podnikání, automatizují rutinní úkoly a přinesou nové možnosti, jak oslovit zákazníky.\nAť už jde o chytré asistenty, analýzu dat nebo personalizaci služeb.",
                icon: GradientIcon(
                  icon: Icons.rocket_launch,
                  size: 64,
                )),
            ServiceCard(
                title: "Konzultace a podpora",
                description:
                    "Nabízíme konzultace a dlouhodobou podporu, aby vaše aplikace držela krok s moderními technologiemi. Pomůžeme vám s optimalizací, technickými problémy a vylepšeními pro její efektivní fungování.",
                icon: GradientIcon(
                  icon: Icons.support_agent,
                  size: 64,
                )),
          ],
        )));
  }
}
