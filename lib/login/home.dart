// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'SignUp.dart';

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
            FlatButton(
              onPressed: () {},
              child: const Text(
                "Forgot your password?",
                style: TextStyle(
                  color: Color(0xFF1F849E),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
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
                      onPressed: () {},
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
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
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
                FlatButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF1F849E),
                    ),
                  ),
                ),
                // GestureDetector(
                //   child: const Text("Don't have account?"),
                //   onTap: () {
                //     Navigator.of(context).pushReplacement(MaterialPageRoute(
                //         builder: (BuildContext context) => const SingUp()));
                //   },
                // const Padding(
                //   padding: const EdgeInsets.fromLTRB(0, 0, 13, 0),
                //   child: const Text(
                //     "Don't have account?",
                //     style: TextStyle(
                //       fontWeight: FontWeight.normal,
                //       color: const Color(0xFF787D84),
                //       fontSize: 15,
                //       onTap: () {
                //         Navigator.of(context).pushReplacement(
                //             MaterialPageRoute(
                //                 builder: (BuildContext context) =>
                //                     const SingUp()));
                //       },
                //     ),
                //   ),
                // ),
                // const Text(
                //   "Sign up",
                //   style: TextStyle(
                //     fontWeight: FontWeight.normal,
                //     color: const Color(0xFF1F849E),
                //     fontSize: 15,
                //   ),
                // ),
                //)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
