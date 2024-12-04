import 'package:flutter/material.dart';
import 'package:zemni_prace/components/card/reference_card.dart';
import 'package:zemni_prace/components/section.dart';
import 'package:zemni_prace/data/photos/photos.dart';
import 'package:zemni_prace/main.dart';

class ReferencesSection extends StatelessWidget {
  const ReferencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Section(
        background: App.backgroundLight,
        title: "REALIZACE",
     description:  "Ukázky dokončených projektů, které vám přiblíží naši práci. Každá realizace je přizpůsobena požadavkům zákazníka a konkrétním podmínkám. Prohlédněte si, jak probíhá naše práce.",
        child: Container(
          width: double.infinity,
            child: Wrap(
          spacing: isSmall ? 8:16,
          runSpacing: isSmall ? 8:16,
          alignment: WrapAlignment.center,
          children: [
            ...Photos.references.entries.map((entry) {
              return ReferenceCard(
                  description: entry.value.description,
                  photoLibrary: entry.value);
            }),
          ],
        )));
  }
}
