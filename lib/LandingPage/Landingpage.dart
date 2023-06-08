import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (Constraints.maxWidth > 800 && Constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [
        section1(),
        section2(),
        section3(),
        section4(),
      ],
    ));
  }
}

class section1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'Assets/images/teacher.jpg',
          height: 200,
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          'for',
          style: TextStyle(fontSize: 24, color: Colors.white),
        )
      ],
    ));
  }
}

class section2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'Assets/images/teacher.jpg',
          height: 200,
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          'for ',
          style: TextStyle(fontSize: 24, color: Colors.white),
        )
      ],
    ));
  }
}

class section3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'Assets/images/teacher.jpg',
          height: 200,
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          'for er',
          style: TextStyle(fontSize: 24, color: Colors.white),
        )
      ],
    ));
  }
}

class section4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'Assets/images/teacher.jpg',
          height: 200,
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          'For Every ClassRoom',
          style: TextStyle(fontSize: 24, color: Colors.white),
        )
      ],
    ));
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
