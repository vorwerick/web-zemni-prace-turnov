import 'package:flutter/material.dart';
import 'package:zemni_prace/components/card/descriptive_card.dart';
import 'package:zemni_prace/components/card/reference_card.dart';
import 'package:zemni_prace/components/section.dart';
import 'package:zemni_prace/data/photos/photos.dart';
import 'package:zemni_prace/main.dart';

class TechniqueSection extends StatelessWidget {
  const TechniqueSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Section(
        background: App.background,
        title: "TECHNIKA",
        description:
            "V této sekci najdete přehled techniky, kterou využíváme při naší práci. Naše stroje jsou pravidelně udržované, aby spolehlivě zvládaly zemní a stavební práce všeho druhu.",
        child: Container(
            child: Column(
          children: [
            DescriptiveCard(
                title: "Nosič kontejnerů MAN - nosnost 4 tuny",
                description: "Je určen pro přepravu kontejnerů a stavebního materiálu. Díky hydraulickému systému usnadňuje nakládání a vykládání, ideální pro stavby i odvoz suti.",
              photoLibrary: Photos.manTech),
            SizedBox(height: 24,),
            DescriptiveCard(
                title: "Dumper - nosnost 3 tuny",
                description: "Slouží k přepravě sypkých materiálů na stavbách nebo při terénních úpravách. Díky kompaktnímu designu je vhodný i do stísněných prostor.",
                 photoLibrary: Photos.dumperTech,),
            SizedBox(height: 24,),
            DescriptiveCard(
                title: "Pásový bagr CAT - hmotnost 2 tuny",
                description: "Kompaktní stroj ideální pro zemní práce v omezených prostorech. Je vhodný pro výkopy, úpravy terénu a přípravu stavebních základů, díky své obratnosti a spolehlivosti.",
                photoLibrary: Photos.catTech)
          ],
        )));
  }
}
