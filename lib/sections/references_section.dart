import 'package:appwizards_web/components/card/project_card.dart';
import 'package:appwizards_web/components/section.dart';
import 'package:appwizards_web/data/projects.dart';
import 'package:appwizards_web/main.dart';
import 'package:flutter/material.dart';

class ReferencesSection extends StatelessWidget {
  const ReferencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isSmall = App.isMobile(context) || App.isTablet(context);
    return Section(
        sectionId: "references",
        height: isSmall ? height * 3.1 : height * 1.6,
        background: App.background,
        title: "Projekty",
        description:
            "Každý náš projekt je unikátní a přizpůsobený potřebám klienta. Ať už se jedná o mobilní aplikace, webové systémy nebo IoT řešení, vždy klademe důraz na kvalitu, efektivitu a moderní technologie. Spolupracujeme s klienty na všech fázích – od návrhu až po dlouhodobou podporu.",
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: Projects.projects.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: isSmall ? 300 * 1.2 : 300,
            crossAxisSpacing: 96,
            mainAxisSpacing: 48,
            maxCrossAxisExtent: isSmall ? 800 * 1.2 : 800, // Mezery mezi řádky
          ),
          itemBuilder: (BuildContext context, int index) {
            final entry = Projects.projects[index];
            return ProjectCard(
              tags: entry.tags,
              name: entry.name,
              description: entry.description,
              actions: entry.actions,
              subtitle: entry.subtitle,
              images: entry.images,
              background1: entry.background1,
              background2: entry.background2,
            );
          },
        ));
  }
}
