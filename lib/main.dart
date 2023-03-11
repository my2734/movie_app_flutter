import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './pages/HomePage.dart';
import './pages/CategoryPage.dart';
import './pages/MoviePage.dart';
import './pages/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import './youtube.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    //to hide status bar and below buttons
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0D111D),
      ),
      routes: {
        '/': (context) => LoginPage(),
        // '/': (context)=> YoutubePage(),
        'categoryPage' : (context)=>CategoryPage(),
      },
    );
  }
}
