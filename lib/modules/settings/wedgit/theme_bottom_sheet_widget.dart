import 'package:flutter/material.dart';
import 'package:islamic/modules/settings/wedgit/selected_option_widget.dart';
import 'package:islamic/modules/settings/wedgit/unselected_option_widget.dart';
import 'package:provider/provider.dart';
import '../../../core/provider/app_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeButoomSheetWidget extends StatelessWidget {
  const ThemeButoomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: appProvider.isDark()
                ? SelectedOptionWidget(selectedTitle: local.dark)
                : UnSelcectedOptionWidget(unselectedTitle: local.dark),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: appProvider.isDark()
                ? UnSelcectedOptionWidget(unselectedTitle: local.light)
                : SelectedOptionWidget(selectedTitle: local.light),
          ),
        ],
      ),
    );
  }
}
