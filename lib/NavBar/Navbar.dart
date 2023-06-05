import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Navbar extends StatelessWidget {
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "GK Study Hub",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                const Text(
                  "home",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.green,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
          child: Column(
        children: <Widget>[
          const Text(
            "GK Study Hub",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "home",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      )),
    );
    ;
  }
}
