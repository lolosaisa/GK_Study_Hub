import 'package:flutter/material.dart';
import 'package:generalkagoprimary/components/my_Container.dart';

class LandingPage extends StatelessWidget {
  final List _sections = [
    'section 1',
    'section 2',
    'section 3',
    'section 4',
  ];

  LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _sections.length,
          itemBuilder: (context, index) {
            return const MyContainer();
          }),
    );
  }
}
