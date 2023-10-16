import 'package:flutter/material.dart';
import 'package:mahdaviat_project/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: const [
      //   GlobalCupertinoLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // supportedLocales: const [
      //   Locale("fa", "IR"),
      // ],
      // locale: Locale("fa", "IR"),
      debugShowCheckedModeBanner: false,
      title: 'mahdaviat ',
      theme: ThemeData(
        fontFamily: 'fonts',
        useMaterial3: true,
      ),
      home: const welcomeScreen(),
    );
  }
}

