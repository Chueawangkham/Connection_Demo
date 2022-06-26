import 'package:connectionapp/login/Facebook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'Google.dart';
import 'SignUp.dart';
import 'Forgot.dart';
import 'Facebook.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 17);
    const style2 = TextStyle(fontSize: 20);

    bool chaangeColor = true;
    bool remember = true;
    bool _passwordVisible = true;

    TextEditingController emailController = TextEditingController();

    Widget EmailAddress() {
      return Container(
        height: 45,
        width: 300,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            style: GoogleFonts.prompt(
              textStyle: style,
              color: Colors.black,
            ),
            //controller: emailController,
            onChanged: (value) {},
            decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff292929),
              ),
              contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 10),
              hintStyle: TextStyle(fontSize: 16, color: Colors.black54),
              hintText: 'Email Address',
              //border: InputBorder.none,
            ),
          ),
        ),
      );
    }

    Widget buildRememberMe() {
      return Container(
        margin: const EdgeInsets.fromLTRB(70, 0, 0, 0),
        child: Row(
          children: [
            Checkbox(
                checkColor: Colors.black,
                activeColor: const Color(0xff878686),
                value: remember,
                onChanged: (value) {
                  remember = value!;
                }),
            Text(
              "Remember me",
              style: GoogleFonts.prompt(
                textStyle: style,
                color: const Color(0xFF787D84),
              ),
            ),
          ],
        ),
      );
    }

    Widget Password() {
      return Container(
        height: 45,
        width: 300,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            //obscureText: true,
            style: GoogleFonts.prompt(
              textStyle: style,
              color: Colors.black,
            ),
            //controller: emailController,
            obscureText: _passwordVisible,
            keyboardType: TextInputType.visiblePassword,

            onChanged: (value) {},
            decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xff292929),
              ),
              // icon: Icon(
              //   // Based on passwordVisible state choose the icon
              //   Icons.visibility_off,
              //   color: Colors.black54,
              // ),
              contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 10),
              hintStyle: TextStyle(fontSize: 16, color: Colors.black54),
              hintText: 'Password',
            ),
          ),
        ),
      );
    }

    //final size = MediaQuery.of(context).size;
    return Scaffold(
      //โครงสร้าง *นั่งร้าน
      backgroundColor: const Color(0xFF171A20),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 280.0,
                  height: 280.0,
                  child: Image.asset('image_icon/CON_ICON6.png'),
                ),
                const SizedBox(height: 5),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: EmailAddress(),
                    ),
                    Password(),
                    buildRememberMe(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 55,
                        width: 260,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23.0),
                            color: const Color(0xff4a4a4a),

                            //gradient: LinearGradient(colors: [Colors.black54, Colors.black])
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: chaangeColor != false
                                  ? const Color(0xff464748)
                                  : const Color(0xff0f1217),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: GoogleFonts.prompt(
                                textStyle: style2,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Forgot()),
                    );
                  },
                  child: Text(
                    "Forgot your password?",
                    style: GoogleFonts.prompt(
                      textStyle: style,
                      color: const Color(0xFF1C7B94),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "or connect with",
                  style: GoogleFonts.prompt(
                    textStyle: style,
                    color: const Color(0xFF787D84),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
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
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account?",
                      style: GoogleFonts.prompt(
                        textStyle: style,
                        color: const Color(0xFF787D84),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SingUp()),
                          );
                        },
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.prompt(
                            textStyle: style,
                            color: const Color(0xFF1F849E),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
