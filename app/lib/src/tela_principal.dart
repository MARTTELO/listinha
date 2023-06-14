import 'package:flutter/material.dart';
import 'package:listinha/src/configuration/configuration_page.dart';
import 'package:listinha/src/home/home_page.dart';
import 'package:listinha/src/shared/themes/themes.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listinha',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
        '/': (context) => const HomeWidget(),
        '/config': (context) => const ConfigurationPage(),
      },
    );
  }
}
