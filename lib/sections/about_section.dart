import 'package:appwizards_web/components/section.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Section(
      sectionId: "about",
        height: isSmall ? height * 1.2 : height * 0.90,
      background: App.background,
        title: "O nás",
        description: """Naše firma AppWizards vznikla v roce 2023, když jsme čelili přetížení kapacit a rozhodli se rozšířit tým o nové odborníky, kteří nám pomohli reagovat na rostoucí poptávku po našich službách. I přesto, že jsme relativně mladá firma, naši vývojáři mají více než 7 let zkušeností v oblasti softwarového vývoje a za sebou mnoho úspěšných projektů.

Věříme v sílu nejmodernějších technologií, a proto při vývoji aplikací používáme nástroje, které nám umožňují vytvářet kvalitní a efektivní řešení. Nabízíme jak multiplatformní aplikace, které jsou dostupné na různých zařízeních, tak i nativní aplikace, které jsou optimalizované pro konkrétní platformy. Výběr technologie závisí na specifikách každé zakázky, a proto s našimi klienty vždy podrobně probíráme, které řešení je pro ně to nejlepší. Každé má své výhody a nevýhody, a naším cílem je najít to nejvhodnější pro konkrétní potřebu.

Dbáme na to, aby naše aplikace držely krok s technologickým vývojem a byly vždy aktuální. K tomu pravidelně provádíme analýzu stability a používání aplikací, což nám pomáhá plánovat další vylepšení a zajistit, že naše řešení i nadále odpovídá potřebám trhu. Naší filozofií je neustále zlepšovat a přizpůsobovat aplikace, aby přinášely našim klientům maximální hodnotu a podporovaly jejich růst. Pravidelně se také vzděláváme v nejmodernějších trendech, abychom mohli využívat aktuální technologie a přinášet inovativní řešení.""",
        child: Container(
           ));
  }
}
