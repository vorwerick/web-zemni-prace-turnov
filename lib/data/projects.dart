import 'dart:ui';

import 'package:flutter/material.dart';

class Projects {
  static final projects = [qpRint, ramicall, geofun, zemniPrace, jay, engiAI];

  static final qpRint = Project(
      id: 0,
      actions: [],
      images: [
        Img(
            url: "http://dzubera.cz/photos-appwizards/qprint_demo.jpeg",
            description: ''),
        Img(
            url: "http://dzubera.cz/photos-appwizards/qprint_demo2.jpeg",
            description: ''),
        Img(
            url: "http://dzubera.cz/photos-appwizards/qprint_demo3.jpeg",
            description: '')
      ],
      background1: Colors.red,
      background2: Colors.blueAccent,
      name: "Qprint",
      tags: ["Android", "QR kód", "Tisk"],
      subtitle: "Aplikace pro průmysl",
      description:
          "QPrint je aplikace pro tisk QR kódů s podporou tiskáren Datamax, určená pro průmyslové závody. Umožňuje pracovníkům efektivně označovat vyrobené díly a usnadňuje jejich expedici. Zajišťuje rychlý tisk, přesnost a integraci s výrobními procesy.");

  static final ramicall = Project(
      id: 1,
      actions: [
        Act(url: "https://www.ramisys.cz/", name: "Web"),
        Act(url: "https://play.google.com/ramicall", name: "Android")
      ],
      images: [
        Img(
            url: "http://dzubera.cz/photos-appwizards/ramicall1.png",
            description: ''),
        Img(
            url: "http://dzubera.cz/photos-appwizards/ramicall2.png",
            description: ''),
        Img(
            url: "http://dzubera.cz/photos-appwizards/ramicall3.png",
            description: ''),
      ],
      background1: Colors.green,
      background2: Colors.white,
      name: "Ramicall",
      subtitle: "Mobilní aplikace",
      tags: ["Android", "Záznam hovorů"],
      description:
          "Ramicall je doplněk k CRM systému, který zaznamenává telefonní hovory zaměstnanců, zobrazuje notifikace o příchozích hovorech s daty z CRM a poskytuje přehledné statistiky. Zlepšuje zákaznickou komunikaci a umožňuje efektivní řízení obchodních hovorů.");

  static final geofun = Project(
      id: 2,
      actions: [
        Act(
            url: "https://play.google.com/store/apps/details?id=cz.wmp.geofun",
            name: "Android"),
        Act(
            url: "https://apps.apple.com/cz/app/geofun-trip-games/id704555478",
            name: "iOS")
      ],
      images: [
        Img(
            url: "http://dzubera.cz/photos-appwizards/geofun.png",
            description: '')
      ],
      background1: Colors.lightGreenAccent,
      background2: Colors.green,
      name: "Geofun",
      subtitle: "Turistická aplikace",
      tags: ["Android", "iOS", "GPS", "Redesign"],
      description:
          "GeoFun je geolokační hra, která spojuje poznávání zajímavých míst s interaktivními úkoly a výzvami. Hráči objevují reálné lokality, řeší hádanky a plní mise pomocí mobilní aplikace. Ideální pro zábavné vzdělávání, turistiku a firemní teambuilding.");

  static final zemniPrace = Project(
    id: 3,
    actions: [
      Act(url: "https://zemniprace-turnov.cz/", name: "Web"),
    ],
    background1: Colors.grey,
    background2: Colors.brown,
    images: [
      Img(
          url: "http://dzubera.cz/photos-appwizards/zemniprace1.png",
          description: ''),
      Img(
          url: "http://dzubera.cz/photos-appwizards/zemniprace2.png",
          description: '')
    ],
    name: "Zemní práce",
    tags: ["Web"],
    subtitle: "Jednostránkový web",
    description:
        "Single page web pro prezentaci podnikání – moderní a responzivní řešení, které efektivně představí vaše služby. Rychlé načítání, intuitivní design a jasná struktura zajišťují skvělý uživatelský zážitek. Ideální pro firmy, freelancery i startupy.",
  );

  static final jay = Project(
      id: 4,
      actions: [
        Act(
            url:
                "https://play.google.com/store/apps/details?id=cz.telwork.jay.play&hl=cs",
            name: "Android"),
        Act(
            url:
                "https://apps.apple.com/cz/app/jay/id1516256756?platform=iphone",
            name: "iOS")
      ],
      name: "JAY",
      images: [
        Img(
            url: "http://dzubera.cz/photos-appwizards/jay1.png",
            description: ''),
        Img(
            url: "http://dzubera.cz/photos-appwizards/jay3.png",
            description: ''),
        Img(
            url: "http://dzubera.cz/photos-appwizards/jay4.png",
            description: ''),
      ],
      background1: Colors.red,
      background2: Colors.yellow,
      description:
          "Svolávací aplikace JAY je operační systém pro JSDH/SDH, který přes server zasílá výstražné notifikace hasičům o výjezdu s detaily události. Umožňuje velitelům sledovat aktuální účast členů, čímž zefektivňuje koordinaci zásahů.",
      tags: [
        "Android",
        "iOS",
        "Notifikace",
      ],
      subtitle: "Mobilní aplikace pro iOS a Android");

  static final engiAI = Project(
      id: 5,
      actions: [Act(url: "https://www.enginery.shop/", name: "Web")],
      name: "AI zrcadlo",
      images: [],
      description:
          "AI Zrcadlo je chytrá aplikace běžící na Raspberry Pi, která využívá mikrofon k zachycení hlasu a přes API poskytuje AI-driven live konverzaci. Ideální pro interaktivní asistenty, smart home integraci nebo experimenty s umělou inteligencí v reálném čase.",
      tags: ["Android", "iOS", "Budík"],
      background1: Colors.white,
      background2: Colors.blueGrey,
      subtitle: "Aplikace pro Raspberry PI");
}

class Img {
  final String url;
  final String description;

  Img({required this.url, required this.description});
}

class Act {
  final String url;
  final String name;

  Act({required this.url, required this.name});
}

class Project {
  final int id;
  final String name;
  final String subtitle;
  final List<String> tags;
  final String description;
  final List<Img> images;
  final List<Act> actions;
  final Color background1;
  final Color background2;

  Project({
    required this.id,
    required this.actions,
    required this.images,
    required this.name,
    required this.subtitle,
    required this.tags,
    required this.description,
    required this.background1,
    required this.background2,
  });
}
