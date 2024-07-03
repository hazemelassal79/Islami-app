import 'package:flutter/material.dart';
import 'package:islamic/modules/hadeth/hadeth_view.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';
import '../../core/theme/application_theme.dart';

class HadethDetailsView extends StatefulWidget {
  static String routeName = "HadethDetails";

  const HadethDetailsView({super.key});

  @override
  State<HadethDetailsView> createState() => _HadethDetailsViewState();
}

class _HadethDetailsViewState extends State<HadethDetailsView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethContent;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var appProvider=Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(appProvider.isDark()
              ? "assets/images/bg_dark.png"
              : "assets/images/bg3.jpg"),
          //fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          margin: EdgeInsets.only(
            left: 30,
            right: 30,
            top: 30,
            bottom: 20,
          ),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onBackground.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(args.title, style: theme.textTheme.bodyLarge),
              Divider(
                thickness: 1.2,
                indent: 30,
                endIndent: 30,
                height: 10, //padding
              ),
              Expanded(
                child: ListView(children: [
                  Text(args.content,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.onSecondary,
                      )),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
