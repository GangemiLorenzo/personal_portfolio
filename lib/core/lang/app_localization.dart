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
  "title": "Lorenzo Gangemi",
  "home": "Home",
  "projects": "Projects",
  "timeline": "Timeline",
  "not_found": "Page not found",
  "tech": "Tech",
  "tech_text": "Most of my skills are in mobile development, but I've always been passionate about what's innovative in the tech field.\nI currently spend most of my time programming in Flutter, but in the past I have worked with native Android Java and Vue.js.\nI had the chance to learn Node.js and Go. 📱💻",
  "mobile_web_dev": "Mobile and Web developer based in Italy!",
  "hey": "Hey! I'm Lorenzo 👋",
  "description": "Software Engineer, Developer and Tech enthusiast.",
  "bio": "Bio",
  "bio_text": "I'm a mobile developer from Torino, Italy.\nI'm currently working as a Software Engineer and I'm a computer science student at Politecnico di Torino.",
  "go": "Go",
  "brightness": "Brightness"
};
static const Map<String,dynamic> it = {
  "title": "Lorenzo Gangemi",
  "home": "Home",
  "projects": "Progetti",
  "timeline": "Timeline",
  "not_found": "Pagina non trovata",
  "tech": "Tecnologie",
  "tech_text": "La maggior parte della mia esperienza riguarda lo sviluppo mobile, ma sono sempre stato appassionato di qualsiasi cosa fosse innovativo.\nAttualmente trascorro la maggior parte del mio tempo programmando in Flutter, ma nel passato ho lavorato con Android nativo e Vue.js.\nHo avuto modo di apprendere Node.js e Go. 📱💻",
  "mobile_web_dev": "Sviluppatore Mobile e Web con sede in Italia!",
  "hey": "Ciao! Sono Lorenzo 👋",
  "description": "Ingegnere Software, Sviluppatore e appassionato di tecnologia.",
  "bio": "Bio",
  "bio_text": "Sono uno sviluppatore mobile di Torino, Italia.\nAttualmente lavoro come Software Engineer a PatchAi, una società di Alira Health, e sono uno studente di ingegneria al Politecnico di Torino.",
  "go": "Vai",
  "brightness": "Luminosità"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "it": it};
}
