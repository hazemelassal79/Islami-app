import 'package:flutter/material.dart';
typedef SettingsOptionClicked = void Function();

class SettingsItem extends StatelessWidget {
  final String settingOptionTitle, selectedOption;
  final SettingsOptionClicked onOptionTaped;
  const SettingsItem(
      {super.key,
      required this.settingOptionTitle,
      required this.onOptionTaped,
      required this.selectedOption});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          settingOptionTitle,
          textAlign: TextAlign.start,
          style: theme.textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: onOptionTaped,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: mediaQuery.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: theme.colorScheme.onSecondary,
                  width: 1.2,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(selectedOption),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: theme.colorScheme.onSecondary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
