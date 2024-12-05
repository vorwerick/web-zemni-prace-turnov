import 'package:flutter/material.dart';
import 'package:zemni_prace/components/card/service_card.dart';
import 'package:zemni_prace/components/section.dart';
import 'package:zemni_prace/main.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Section(
        background: App.backgroundLight,
        title: "SLUŽBY",
        child: Container(
            child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          spacing: isSmall ? 12 : 24,
          runSpacing: isSmall ? 12 : 24,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ServiceCard(
                title: "Zemní práce",
                description:
                    "Inženýrské síťe (voda, elektřina, plyn, kanalizace), příjezdové cesty, parkovací stání a dokončovací terénní práce.",
                icon: Image.asset(
                  "assets/icons/excavator.png",
                  height: 64,
                )),
            ServiceCard(
                title: "Bazény na klíč",
                description:
                    "Zajistíme kompletně výstavbu vašeho bazénu od výkopu po jeho uložení a úpravu jeho okolí.",
                icon: Image.asset(
                  "assets/icons/pool.png",
                  height: 64,
                )),
            ServiceCard(
                title: "ČOV",
                description:
                    "Dodavatelsky zajistíme kompletní výstavbu ČOV od firmy Bazénplast.",
                icon: Image.asset(
                  "assets/icons/tank.png",
                  height: 64,
                )),
            ServiceCard(
                title: "Ploty",
                description:
                    "Provádíme kompletní výstavbu plotů, od výkopových prací až po finální realizaci.",
                icon: Image.asset(
                  "assets/icons/fence.png",
                  height: 64,
                )),
            ServiceCard(
                title: "Vrtání děr",
                description:
                    "Pro ploty nebo ohrady. Strojní vrtání děr o průměru 20 a 30 cm do hloubky jednoho metru.",
                icon: Image.asset(
                  "assets/icons/driller.png",
                  height: 64,
                )),
            ServiceCard(
                title: "Stavební práce",
                description: "Naše služby doplňujeme o menší stavební práce. Výstavby podpěrných zídek a menších základových desek.",
                icon: Image.asset(
                  "assets/icons/builder.png",
                  height: 64,
                )),
          ],
        )));
  }
}
