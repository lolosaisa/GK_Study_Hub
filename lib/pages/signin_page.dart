import 'package:flutter/material.dart';
import 'package:generalkagoprimary/components/my_button.dart';
import 'package:generalkagoprimary/components/my_textfield.dart';
import 'package:generalkagoprimary/components/square_tile.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  //add the text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //method for signing user, i will fill it in later

  void SignUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/logo.PNG',
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //add logo, in my case an icon
            /*   const Icon(Icons.lock, size: 70),
            const SizedBox(
              height: 10,
            ),*/
            //text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome to GK Study Hub',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //add the username text field
            MyTextField(
              Controller: usernameController,
              hintText: 'Enter your Username',
              obscureText: false,
            ),
            //add the password text field
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              Controller: passwordController,
              hintText: 'Enter Your PassWord',
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),

            MyTextField(
              Controller: passwordController,
              hintText: 'Confirm Your Password',
              obscureText: true,
            ),

            const SizedBox(
              height: 10,
            ),
            //add sign in buttons
            MyButton(
              onTap: SignUserIn,
            ),
            const SizedBox(
              height: 40,
            ),
            //or continue with
            /* Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    'Or Continue with',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                //google sign in option
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [SquareTile(imagePath: 'google2.jpg')],
                ),
                const SizedBox(
                  height: 20,
                )
              ],*/
          ],
        ),
      )),
    );
  }
}
