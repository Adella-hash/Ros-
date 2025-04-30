import 'package:flutter/material.dart';
import 'dart:async'; // Import for asynchronous operations
import 'package:flutter/foundation.dart'; // Import for SynchronousFuture

class LocalizationService {
  static const List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('es', 'ES'),
    Locale('fr', 'FR'),
  ];

  static const LocalizationsDelegate<dynamic> localizationDelegate =
      _AppLocalizationsDelegate();

  static Locale? localeResolutionCallback(
      Locale? locale, Iterable<Locale> supportedLocales) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale?.languageCode &&
          supportedLocale.countryCode == locale?.countryCode) {
        return supportedLocale;
      }
    }
    return supportedLocales.first;
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<dynamic> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return LocalizationService.supportedLocales
        .any((supportedLocale) => supportedLocale.languageCode == locale.languageCode);
  }

  @override
  Future<dynamic> load(Locale locale) async {
    // Load your localization files or data here
    return SynchronousFuture<dynamic>(null);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<dynamic> old) => false;
}