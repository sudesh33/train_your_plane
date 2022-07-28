
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trainyourplane/Screens/about_page.dart';
import 'package:trainyourplane/Screens/all_videos.dart';
import 'package:trainyourplane/Screens/contact_page.dart';
import 'package:trainyourplane/Screens/free_tips_page.dart';
import 'package:trainyourplane/Screens/home_page.dart';
import 'package:trainyourplane/Screens/testimonials_page.dart';
import 'package:trainyourplane/Screens/scroll_tabs.dart';
import 'package:trainyourplane/Screens/video_play_screen.dart';
import 'package:trainyourplane/Screens/videos_page.dart';
import 'Screens/logo_home_screen.dart';

// void main() => runApp(TrainYourPlane());

void main() {
  // add these lines
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  /////////////
  runApp(TrainYourPlane());
}

class TrainYourPlane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Train your Plane',
      theme: ThemeData(fontFamily: 'exco'),
      initialRoute: '/home',
      routes: {
        '/home':(context) => HomePage(),
        '/contact_us' : (context) => ContactPage(),
        '/about' : (context) => AboutPage(),
        '/testimonials' : (context) => TestimonialsPage(),
        '/videos' : (context) => VideosPage(),
        '/freetips' : (context) => FreeTipsPage(),
        '/scroll_tabs' : (context) => ScrollTab(),

        // '/play_videos' : (context) => VideoPlayerScreen(title: 'Videos', initialId: 1),
      },
      home: ContactPage(),
    );
  }
}
