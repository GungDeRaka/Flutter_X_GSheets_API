import 'package:flutter/material.dart';
import 'package:flutter_gsheets_api/pages/form_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true,),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      highContrastDarkTheme: ThemeData.dark(),
      routes: {
        "FormScreen": (context) => FormScreen(),
      },
      initialRoute: "FormScreen",
    );
  }
}
