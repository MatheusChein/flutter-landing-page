import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home/home.dart';
import 'pages/about/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EasyCalendar',
      theme: ThemeData(fontFamily: GoogleFonts.sora().fontFamily),
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
