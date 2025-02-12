import 'dart:io';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/services/shared_prefs.dart';
import 'package:path_provider/path_provider.dart';

Future<void> saveImage(File imageFile) async {
  final directory = await getApplicationDocumentsDirectory();
  final String newPath =
      '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.png';
  await imageFile.copy(newPath);

  await SharedPrefs.setString(savedImage, newPath);
}
