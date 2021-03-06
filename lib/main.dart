import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ktuhelp/loginpage.dart';
import 'gpa_page.dart';

import 'performance_page.dart';
import 'analysis.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'videopageaa.dart';
import 'attendance.dart';
import 'notespage.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
      );
  runApp(Ktumain());
}

class Ktumain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color.fromRGBO(34, 34, 34, 10),
      ),
      home: Login(),
      routes: {
        "attendance": (context) => Attandancepageaa(),
        "SGPA/CGPA": (context) => GPAHomePage(),
        "Notes": (context) => Notesaa(),
        "performance": (context) => PerformanceHomePage(),
        "Result Analysis": (context) =>Analysis(),
        "Video Lectures": (context) => Video(),
      },
    );
  }
}
