// ignore_for_file: constant_identifier_names

import 'package:yaaseen/hive_helper/app_prefs.dart';

class AppStrings {
  static const String app_name = 'app_name';
  static const String settings = 'settings';
  static const String bookmarks = 'bookmarks';
  static const String arabic_text = 'arabic_text';
  static const String arabic = 'arabic';
  static const String meaning = 'meaning';
  static const String transcription = 'transcription';
  static const String about_sura = 'about_sura';
  static const String version = 'version';
  static const String rate_app = 'rate_app';
  static const String share_app = 'share_app';
  static const String download_app = 'download_app';
  static const String app_link = 'https://play.google.com/store/apps/details?id=uz.mirrikh.yaaseen';
  static const String app_id = 'uz.mirrikh.yaaseen';
}

extension StringExtension on String {
  String tr() {
    AppLocales locales = AppLocales();
    return locales.locales[this]![AppPrefs.locale].toString();
  }
}

class AppLocales {
  Map<String, Map<String, String>> get locales => _locales();
  Map<String, Map<String, String>> _locales() => {
        AppStrings.app_name: _setString('Yosin surasi', 'Ёсин сураси'),
        AppStrings.settings: _setString('Sozlamalar', 'Созламалар'),
        AppStrings.arabic_text: _setString('Arabiy matn', 'Aрабий матн'),
        AppStrings.bookmarks: _setString('Xatcho‘plar', 'Хатчўплар'),
        AppStrings.arabic: _setString('Arabiy', 'Aрабий'),
        AppStrings.meaning: _setString("Ma'nosi", 'Маъноси'),
        AppStrings.transcription: _setString("Transkripsiya", 'Транскрипсия'),
        AppStrings.about_sura: _setString("Sura haqida", 'Сура ҳақида'),
        AppStrings.version: _setString("Talqin", 'Талқин'),
        AppStrings.rate_app: _setString("Ilovani baholash", 'Иловани баҳолаш'),
        AppStrings.share_app: _setString("Ilovani ulashish", 'Иловани улашиш'),
        AppStrings.download_app: _setString(
          'Yosin surasi mobil ilovasini "Play Store"dan yuklab oling',
          'Ёсин сураси мобил иловасини "Play Store"дан юклаб олинг',
        ),
      };
  Map<String, String> _setString(String uz, String cr) => {
        "uz": uz,
        "cr": cr,
      };
}
