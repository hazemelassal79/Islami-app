import 'package:flutter/material.dart';
import 'package:islamic/modules/settings/widgets/selected_option_widget.dart';
import 'package:islamic/modules/settings/widgets/unselected_option_widget.dart';
import 'package:provider/provider.dart';
import '../../../core/provider/app_provider.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: appProvider.currentLocal == "en"
                ? const SelectedOptionWidget(selectedTitle: "english")
                : const UnSelcectedOptionWidget(unselectedTitle: "english"),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                appProvider.changeLanguage("ar");
                Navigator.pop(context);
              },
              child: appProvider.currentLocal == "en"
                  ? const UnSelcectedOptionWidget(unselectedTitle: "عربي")
                  : const SelectedOptionWidget(selectedTitle: "عربي")),
        ],
      ),
    );
  }
}
