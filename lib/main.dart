import 'package:app_curso/src/HomePage.dart';
import 'package:app_curso/src/layout_builder_page.dart';
import 'package:app_curso/src/orientation_page.dart';
import 'package:app_curso/src/responsive_row_col.dart';
import 'package:app_curso/src/responsive_wrap.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.deepPurple),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(backgroundColor: Colors.deepPurple),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: Colors.white,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white)),
        appBarTheme: const AppBarTheme(
          color: Colors.deepPurple,
          titleTextStyle: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.purpleAccent,
          ),
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
