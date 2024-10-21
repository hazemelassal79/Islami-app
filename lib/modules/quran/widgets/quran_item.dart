import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final String SuraName;
  final String SuraNumber;
  const QuranItem(
      {super.key, required this.SuraName, required this.SuraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            SuraNumber,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Container(
          width: 1.2,
          height: 45,
          color: theme.colorScheme.onPrimary,
        ),
        Expanded(
          child: Text(
            SuraName,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
