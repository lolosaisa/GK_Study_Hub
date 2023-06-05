import 'package:flutter/material.dart';
import 'package:generalkagoprimary/NavBar/Navbar.dart';
import 'package:generalkagoprimary/LandingPage/Landingpage.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(246, 44, 88, 8),
                Color.fromARGB(255, 21, 29, 19)
              ]),
        ),
        child: Column(
          children: <Widget>[Navbar(), LandingPage()],
        ),
      ),
    );
  }
}
