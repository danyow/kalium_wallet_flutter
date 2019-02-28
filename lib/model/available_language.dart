import 'package:flutter/material.dart';
import 'package:kalium_wallet_flutter/localization.dart';
import 'package:kalium_wallet_flutter/model/setting_item.dart';

enum AvailableLanguage {
  DEFAULT,
  ENGLISH,
  CHINESE_SIMPLIFIED,
  CHINESE_TRADITIONAL,
  DUTCH,
  FRENCH,
  GERMAN,
  HEBREW,
  HINDI,
  HUNGARIAN,
  INDONESIAN,
  KOREAN,
  ITALIAN,
  MALAY,
  POLISH,
  PORTUGUESE,
  ROMANIAN,
  RUSSIAN,
  SLOVENIAN,
  SPANISH,
  SWEDISH,
  TAGALOG,
  TURKISH,
  VIETNAMESE
}

/// Represent the available languages our app supports
class LanguageSetting extends SettingSelectionItem {
  AvailableLanguage language;

  LanguageSetting(this.language);

  String getDisplayName(BuildContext context) {
    switch (language) {
      case AvailableLanguage.ENGLISH:
        return "English (en)";
      case AvailableLanguage.FRENCH:
        return "Français (fr)";
      case AvailableLanguage.GERMAN:
        return "Deutsch (de)";
      case AvailableLanguage.SPANISH:
        return "Español (es)";
      case AvailableLanguage.HINDI:
        return "हिन्दी (hi)";
      case AvailableLanguage.HUNGARIAN:
        return "Magyar (hu)";
      case AvailableLanguage.HEBREW:
        return "Hebrew (he)";
      case AvailableLanguage.INDONESIAN:
        return "Bahasa Indonesia (id)";
      case AvailableLanguage.KOREAN:
        return "한국어 (ko)";
      case AvailableLanguage.ITALIAN:
        return "Italiano (it)";
      case AvailableLanguage.DUTCH:
        return "Nederlands (nl)";
      case AvailableLanguage.POLISH:
        return "Polski (pl)";
      case AvailableLanguage.PORTUGUESE:
        return "Português (pt)";
      case AvailableLanguage.ROMANIAN:
        return "Romanian (ro)";
      case AvailableLanguage.RUSSIAN:
        return "Русский язык (ru)";
      case AvailableLanguage.SLOVENIAN:
        return "Slovenščina (sl)";
      case AvailableLanguage.SWEDISH:
        return "Svenska (sv)";
      case AvailableLanguage.TAGALOG:
        return "Tagalog (tl)";
      case AvailableLanguage.TURKISH:
        return "Türkçe (tr)";
      case AvailableLanguage.VIETNAMESE:
        return "Tiếng Việt (vi)";
      case AvailableLanguage.CHINESE_SIMPLIFIED:
        return "简体字 (zh-Hans)";
      case AvailableLanguage.CHINESE_TRADITIONAL:
        return "繁體字 (zh-Hant)";
      case AvailableLanguage.MALAY:
        return "Bahasa Melayu (ms)";
      default:
        return AppLocalization.of(context).systemDefault;
    }
  }

  String getLocaleString() {
    switch (language) {
      case AvailableLanguage.ENGLISH:
        return "en";
      case AvailableLanguage.FRENCH:
        return "fr";
      case AvailableLanguage.GERMAN:
        return "de";
      case AvailableLanguage.SPANISH:
        return "es";
      case AvailableLanguage.HINDI:
        return "hi";
      case AvailableLanguage.HUNGARIAN:
        return "hu";
      case AvailableLanguage.HEBREW:
        return "he";
      case AvailableLanguage.INDONESIAN:
        return "id";
      case AvailableLanguage.KOREAN:
        return "ko";
      case AvailableLanguage.ITALIAN:
        return "it";
      case AvailableLanguage.DUTCH:
        return "nl";
      case AvailableLanguage.POLISH:
        return "pl";
      case AvailableLanguage.PORTUGUESE:
        return "pt";
      case AvailableLanguage.ROMANIAN:
        return "ro";
      case AvailableLanguage.RUSSIAN:
        return "ru";
      case AvailableLanguage.SLOVENIAN:
        return "sl";
      case AvailableLanguage.SWEDISH:
        return "sv";
      case AvailableLanguage.TAGALOG:
        return "tl";
      case AvailableLanguage.TURKISH:
        return "tr";
      case AvailableLanguage.VIETNAMESE:
        return "vi";
      case AvailableLanguage.CHINESE_SIMPLIFIED:
        return "zh-Hans";
      case AvailableLanguage.CHINESE_TRADITIONAL:
        return "zh-Hant";
      case AvailableLanguage.MALAY:
        return "ms";
      default:
        return "DEFAULT";
    }
  }
  // For saving to shared prefs
  int getIndex() {
    return language.index;
  }
}