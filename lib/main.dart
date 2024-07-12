import 'package:app_curso/src/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.red),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(backgroundColor: Colors.red),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: Colors.white,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white)),
        appBarTheme: const AppBarTheme(
          elevation: 4,
          color: Colors.white,
          titleTextStyle: TextStyle(
            // color: Colors.white,
            backgroundColor: Colors.white,
          ),
          iconTheme: IconThemeData(color: Colors.grey),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // home: const ResponsiveWrap(),
      // home: const OrientationPage(),
      // home: const LayoutBuilderPage(),
      home: const HomePage(),
    );
  }
}
