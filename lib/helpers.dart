import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'config.dart';


Future<String> loadTextAsset(String path) async {
  return   rootBundle.loadString(path);
}

String getJsonPath(String jsonFileName){
  return JSON_ASSET_PATH + jsonFileName;
}