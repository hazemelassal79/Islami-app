import 'package:flutter/material.dart';
import 'package:islamic/core/theme/application_theme.dart';
import 'package:islamic/modules/hadeth/hadeth_view.dart';
import 'package:islamic/modules/quran/quran_view.dart';
import 'package:islamic/modules/radio/radio_view.dart';
import 'package:islamic/modules/settings/settings_view.dart';
import 'package:islamic/modules/tasbeh/tasbeh_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../core/provider/app_provider.dart';
class HomeLayout extends StatefulWidget {
  static const String routeName = "HomeLayout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    var appProvider=Provider.of<AppProvider>(context);
    var local=AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            appProvider.backgroundImage()
          ),
          //fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/quran.png")),
              label: local.quran,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
              label: local.hadeth,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/sebha.png")),
              label: local.tasbeh,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/radio.png")),
              label: local.radio,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: local.settings,
            )
          ],
        ),
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.islami)),
        body: screens[selectedIndex],
      ),
    );
  }
}
