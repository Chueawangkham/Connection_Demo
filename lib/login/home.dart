import 'package:connectionapp/login/Facebook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'Google.dart';
import 'SignUp.dart';
import 'Forgot.dart';
import 'Facebook.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //โครงสร้าง *นั่งร้าน
      backgroundColor: const Color(0xFF1D2229),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 250.0,
                height: 250.0,
                child: Image.asset('image_icon/CON_ICON6.png'),
              ),
            ]),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
              child: TextField(
                //style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.start,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                  iconColor: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
              child: TextField(
                textAlign: TextAlign.start,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  iconColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // FlatButton(
            //   onPressed: () {},
            //   child: const Text(
            //     "Forgot your password?",
            //     style: TextStyle(
            //       color: Color(0xFF1F849E),
            //       fontSize: 16,
            //     ),
            //   ),

            // ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Forgot()),
                );
              },
              child: const Text(
                "Forgot your password?",
                style: TextStyle(
                  color: Color(0xFF1F849E),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            const Text(
              "or connect with",
              style: TextStyle(
                color: Color(0xFF787D84),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: SizedBox(
                    height: 35,
                    width: 150,
                    child: SignInButton(
                      Buttons.FacebookNew,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                      text: 'Facebook',
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Facebook_page()),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                  width: 150,
                  child: SignInButton(
                    Buttons.Google,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    text: 'Google',
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Google_page()),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have account?",
                  style: TextStyle(
                    color: Color(0xFF787D84),
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SingUp()),
                      );
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Color(0xFF1F849E),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                // FlatButton(
                //   onPressed: () {},
                //   child: const Text(
                //     "Sign up",
                //     style: TextStyle(
                //       fontSize: 16,
                //       color: Color(0xFF1F849E),
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
