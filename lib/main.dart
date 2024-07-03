import 'package:flutter/material.dart';
import 'package:islamic/core/provider/app_provider.dart';
import 'package:islamic/core/theme/application_theme.dart';
import 'package:islamic/layout/home_layout.dart';
import 'package:islamic/modules/quran/quran_details_view.dart';
import 'package:provider/provider.dart';
import 'modules/hadeth/hadeth_details_view.dart';
import 'modules/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.LightTheme,
      darkTheme: ApplicationTheme.DarkTheme,
      themeMode: appProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(appProvider.currentLocal),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => const HomeLayout(),
        QuranDetailsView.routeName: (context) =>const QuranDetailsView(),
        HadethDetailsView.routeName: (context) => const HadethDetailsView(),
      },
    );
  }
}
