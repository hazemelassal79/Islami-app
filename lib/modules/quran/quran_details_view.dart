import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/core/provider/app_provider.dart';
import 'package:islamic/models/sura_details.dart';
import 'package:provider/provider.dart';

class QuranDetailsView extends StatefulWidget {
  static String routeName = "QuranDetails";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (content.isEmpty) readFiles(args.suraNumber);
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(appProvider.backgroundImage()),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "اسلامي",
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          margin: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 30,
            bottom: 20,
          ),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" سورة  ${args.suraName}",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSecondary,
                      )),
                  const SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: theme.colorScheme.onSecondary,
                  ),
                ],
              ),
              const Divider(
                thickness: 1.2,
                indent: 30,
                endIndent: 30,
                height: 10, //padding
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: allVerses.length,
                  itemBuilder: (context, index) => Text(
                    "${allVerses[index]} (${index + 1})",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onSecondary,
                      height: 1.8,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");
    content = text;
    setState(() {
      allVerses = content.split("\n");
    });
  }
}
