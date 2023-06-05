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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeroSection(),
            _buildFeaturesSection(),
            _buildGetStartedSection(),
            _buildFooterSection(),
           
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 600,
      color: Colors.lightGreen,
      child: const Center(
        child: Text(
          'Welcome to GK Study Hub',
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildFeaturesSection() {
    return Container(
      height: 400,
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(
            'Our Features',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFeatureItem(Icons.video_library, 'Video Lessons'),
              _buildFeatureItem(
                  Icons.lightbulb_outline, 'Interactive Exercises'),
              _buildFeatureItem(Icons.school, 'Courses'),
            ],
          ),
        ],
      ),
      
    );
  }

  Widget _buildFeatureItem(IconData icon, String Text) {
    return Column(
      children: [
        Icon(
          icon,
          size: 60,
          color: Colors.lightGreenAccent,
        ),
        SizedBox(height: 10),
        Text(TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ))
      ],
    );
  }
  Widget _buildGetStartedSection(){
    return Container(
      height: 200,
      color: Colors.lightGreen,
      child: Center(
        child: RaisedButton(
          onpressed(){},
          color: Colors.white,
          textColor: Colors.green[100],
          Padding: EdgeInsets.symmetric( vertical: 15, horizontal: 30),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30),
          ),
          child: const Text('Get Started',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),

        ),
      ),
    );
  }
  
  RaisedButton(Null Function() param0, {required Color color, Color? textColor, required EdgeInsets Padding, required RoundedRectangleBorder shape, required Text child}) {}

  Widget _buildFooterSection(){
    return Container(
      height: 100,
      child: Center(
        child: Text('@ 2023 GK Study Hub. All Rights Reserves.',
        style: TextStyle(
          fontSize: 16,
        ),),
      ),
    );
  }

  
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
