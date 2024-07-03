import 'package:flutter/material.dart';

class SelectedOptionWidget extends StatelessWidget {
  final String selectedTitle;
  const SelectedOptionWidget({super.key,required this.selectedTitle});

  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white24,
        border:Border.all(
          color: Colors.black,

        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(selectedTitle),
          Icon(Icons.check,color:theme.colorScheme.onSecondary),
        ],
      ),
    );
  }
}
