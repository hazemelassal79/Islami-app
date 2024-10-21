import 'package:flutter/material.dart';

class UnSelcectedOptionWidget extends StatelessWidget {
  final String unselectedTitle;
  const UnSelcectedOptionWidget({super.key, required this.unselectedTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.05),
        ),
        child: Text(unselectedTitle));
  }
}
