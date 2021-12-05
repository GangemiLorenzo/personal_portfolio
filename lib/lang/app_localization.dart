// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "page1": "Page 1",
  "page2": "Page 2",
  "page3": "Page 3",
  "login": "Login",
  "error": "Errore"
};
static const Map<String,dynamic> it = {
  "page1": "Pagina 1",
  "page2": "Pagina 2",
  "page3": "Pagina 3",
  "login": "Login",
  "error": "Errore"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "it": it};
}
