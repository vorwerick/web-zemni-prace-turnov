import 'package:zemni_prace/main.dart';

class PhotoLibrary {
  final String prefix;
  final String suffix;
  final String description;
  final int count;

  PhotoLibrary({
    required this.suffix,
    required this.prefix,
    required this.count,
    required this.description,
  });

  String getPath(int index) {
    return "${App.BASE_PHOTO_URL}/$prefix/$prefix-$index.$suffix";
  }
}
