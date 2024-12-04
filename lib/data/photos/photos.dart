import 'package:zemni_prace/data/photos/photo_library.dart';

class Photos {
  static const String parkingPlace = "park";
  static const String technique = "tech";
  static const String cov = "cov";
  static const String cov2 = "cov2";
  static const String wall = "zed";
  static const String pool = "pool";
  static const String fence = "fence";
  static const String hriste = "hriste";
  static const String teren = "teren";
  static const String cesta = "cesta";
  static const String cat = "cat";
  static const String dumper = "dumper";
  static const String man = "man";
  static const String stani = "stani";
  static const String pripojka = "pripojka";

  static const String jpeg = "jpeg";
  static const String jpg = "jpg";
  static const String png = "png";

  static Map<String, PhotoLibrary> references = {
    parkingPlace: PhotoLibrary(
        description: "Parkoviště s opěrnou zídkou",
        count: 5,
        suffix: jpeg,
        prefix: parkingPlace),
    cov: PhotoLibrary(
        description: "Instalace Septiku, alternativního filtru a vsakovaní",
        count: 10,
        suffix: jpeg,
        prefix: cov),
    wall: PhotoLibrary(
      description: "Stavba opěrné zdi",
      count: 5,
      prefix: wall,
      suffix: jpeg,
    ),
    fence: PhotoLibrary(
      description: "Výstavba plotu",
      count: 8,
      prefix: fence,
      suffix: jpg,
    ),
    cov2: PhotoLibrary(
        suffix: jpg,
        description: "Výstavba ČOV se zemním filtrem a přečerpávací nádrží",
        count: 11,
        prefix: cov2),


    pool: PhotoLibrary(
      description: "Stavba bazénu s dlažbou",
      count: 6,
      prefix: pool,
      suffix: jpg,
    ),
    hriste: PhotoLibrary(
      description: "Hřiště",
      count: 9,
      prefix: hriste,
      suffix: jpg,
    ),
    cesta: PhotoLibrary(
      description: "Úpravy příjezdové cesty",
      count: 4,
      prefix: cesta,
      suffix: jpg,
    ),
    teren: PhotoLibrary(
      description: "Terénní úpravy",
      count: 8,
      prefix: teren,
      suffix: jpg,
    ),
    stani: PhotoLibrary(
      description: "Parkovací stání",
      count: 9,
      prefix: stani,
      suffix: jpeg,
    ),
    pripojka: PhotoLibrary(
      description: "Vodovodní přípojka",
      count: 8,
      prefix: pripojka,
      suffix: jpeg,
    )
  };

  static PhotoLibrary catTech = PhotoLibrary(
    description: "CAT",
    count: 3,
    prefix: cat,
    suffix: jpeg,
  );

  static PhotoLibrary dumperTech = PhotoLibrary(
    description: "Dumper",
    count: 1,
    prefix: dumper,
    suffix: jpeg,
  );

  static PhotoLibrary manTech = PhotoLibrary(
    description: "MAN",
    count: 1,
    prefix: man,
    suffix: jpeg,
  );
}
