import 'package:flutter/material.dart';
import 'package:islamic/modules/settings/wedgit/language_bottom_sheet_widget.dart';
import 'package:islamic/modules/settings/wedgit/settings_item.dart';
import 'package:islamic/modules/settings/wedgit/theme_bottom_sheet_widget.dart';
import 'package:provider/provider.dart';
import '../../core/provider/app_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          SettingsItem(
            settingOptionTitle: local.language,
            selectedOption:
                appProvider.currentLocal == "en" ? "english" : "عربي",
            onOptionTaped: () {
              ShowLanguageBottomSheet(context);
            },
          ),
          SizedBox(
            height: 20,
          ),
          SettingsItem(
            settingOptionTitle: local.theme_mode,
            selectedOption: appProvider.isDark() ? local.dark : local.light,
            onOptionTaped: () {
              ShowThemeBottomSheet(context);
            },
          ),
          GestureDetector(
            onTap: () {
              ShowLanguageBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }
}

void ShowLanguageBottomSheet(context) {
  showModalBottomSheet(
      context: context, builder: (context) => LanguageBottomSheetWidget());
}

void ShowThemeBottomSheet(context) {
  showModalBottomSheet(
      context: context, builder: (context) => ThemeButoomSheetWidget());
}
