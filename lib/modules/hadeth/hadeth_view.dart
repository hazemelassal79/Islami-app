import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/models/hadeth_content.dart';
import 'package:islamic/modules/hadeth/hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) readFiles();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/hadeth_header.png"),
        Divider(
          thickness: 1.2,
          endIndent: 10,
          indent: 10,
          color: theme.primaryColor,
          height: 10,
        ),
        Text(
          "الاحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        const Divider(
          thickness: 1.2,
          endIndent: 10,
          indent: 10,
          height: 10,
        ),
        Expanded(
            child: ListView.separated(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                HadethDetailsView.routeName,
                arguments: HadethContent(
                    title: allHadethContent[index].title,
                    content: allHadethContent[index].content),
              );
            },
            child: Text(
              allHadethContent[index].title,
              textAlign: TextAlign.center,
            ),
          ),
          separatorBuilder: (context, index) => const Divider(
            thickness: 1.2,
            endIndent: 70,
            indent: 70,
            height: 10,
          ),
          itemCount: allHadethContent.length,
        ))
      ],
    );
  }

  readFiles() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allhadeth = text.split("#");
    for (int i = 0; i < allhadeth.length; i++) {
      String singleHadeth = allhadeth[i].trim(); //to remove spaces
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      HadethContent hadethcontent =
          HadethContent(title: title, content: content);
      allHadethContent.add(hadethcontent);
      setState(() {});
    }
  }
}
