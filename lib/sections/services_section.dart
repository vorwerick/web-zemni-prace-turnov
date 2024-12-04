import 'package:flutter/material.dart';
import 'package:zemni_prace/components/card/service_card.dart';
import 'package:zemni_prace/components/section.dart';
import 'package:zemni_prace/main.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Section(
        background: App.backgroundLight,
        title: "SLUŽBY",
        child: Container(
            child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          spacing: 24,
          runSpacing: 24,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ServiceCard(
                title: "Zemní práce",
                description:
                    " Inženýrské sítě - (voda, elektřina, plyn, kanalizace), příjezdové cesty, parkovací stání, dokončovací terénní práce.",
                icon: Image.asset(
                  "assets/icons/excavator.png",
                  height: 64,
                )),
            ServiceCard(
                title: "Bazény na klíč",
                description:
                    "Zajistíme kompletně výstavbu vašeho bazénu od výkopu po jeho uložení a úpravu jeho okolí",
                icon: Image.asset("assets/icons/pool.png",
                  height: 64,
                )),
            ServiceCard(
                title: "ČOV",
                description:
                    "Dodavatelsky zajistíme kompletní výstavbu ČOV od firmy Bazénplast",
                icon: Image.asset( "assets/icons/tank.png",
                  height: 64,
                )),
            ServiceCard(
                title: "Ploty",
                description: "provádíme kompletní výstavbu plotů. ",
                icon: Image.asset( "assets/icons/fence.png",
                  height: 64,
                )),
            ServiceCard(
                title: "Vrtání děr",
                description:
                    "Pro ploty nebo ohrady. Strojní vrtání děr o průměru 20 a 30cm. do hloubky 1-metr.",
                icon: Image.asset("assets/icons/driller.png",
                  height: 64,
                )),
            ServiceCard(
                title: "Stavební práce",
                description: "podpěrné zídky, menší základové desky.",
                icon: Image.asset("assets/icons/builder.png",
                  height: 64,
                )),
            ServiceCard(
                title: "Odvoz materiálu",
                description:
                    "Zajistíme kompletně výstavbu vašeho bazénu od výkopu po jeho uložení a úpravu jeho okolí",
                icon: Image.asset("assets/icons/transport.png",
                  height: 64,
                )),
          ],
        )));
  }
}
