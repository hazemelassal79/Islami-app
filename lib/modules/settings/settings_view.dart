import 'package:flutter/material.dart';
import 'package:islamic/modules/settings/widgets/language_bottom_sheet_widget.dart';
import 'package:islamic/modules/settings/widgets/settings_item.dart';
import 'package:islamic/modules/settings/widgets/theme_bottom_sheet_widget.dart';
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
          const SizedBox(
            height: 35,
          ),
          SettingsItem(
            settingOptionTitle: local.language,
            selectedOption:
                appProvider.currentLocal == "en" ? "english" : "عربي",
            onOptionTaped: () {
              ShowLanguageBottomSheet(context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SettingsItem(
            settingOptionTitle: local.theme_mode,
            selectedOption: appProvider.isDark() ? local.dark : local.light,
            onOptionTaped: () {
              ShowThemeBottomSheet(context);
            },
          ),
          // GestureDetector(
          //   onTap: () {
          //     ShowLanguageBottomSheet(context);
          //   },
          // ),
        ],
      ),
    );
  }
}

void ShowLanguageBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (context) => const LanguageBottomSheetWidget());
}

void ShowThemeBottomSheet(context) {
  showModalBottomSheet(
      context: context, builder: (context) => const ThemeButoomSheetWidget());
}
