// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:online_kachehri/dialog/alert.dart';
import 'package:online_kachehri/screens/Forgot_Screen.dart';
import 'package:online_kachehri/screens/Home_Screen.dart';
import 'package:online_kachehri/screens/SignUp_Screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final _TextFeildController_for_email = TextEditingController();
  final _TextFeildController_for_password = TextEditingController();
  var _result_Login = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 27,
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/app_logo_lawyer.png'),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      'Online Kachehari',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'cursive',
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'serif',
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.84,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.55),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(54),
                        topRight: Radius.circular(54),
                      ),
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 55,
                      ),

                      const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'serif',
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      // email code is here
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Container(
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(0),
                                  topLeft: Radius.circular(21),
                                  bottomRight: Radius.circular(21),
                                  bottomLeft: Radius.circular(0)),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.blue.withOpacity(0.9),
                                    Colors.lightBlue.withOpacity(0.3),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: TextField(
                            controller: _TextFeildController_for_email,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email),
                              filled: true,
                              fillColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              prefixIconColor: Colors.black,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none),
                              hintText: 'Enter your E-mail',
                              labelText: 'E-mail',
                              labelStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif'),
                              hintStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'serif',
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'serif'),
                          ),
                        ),
                      ),

                      // password code is here
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Container(
                          width: 270,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(0),
                                  topLeft: Radius.circular(21),
                                  bottomRight: Radius.circular(21),
                                  bottomLeft: Radius.circular(0)),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.blue.withOpacity(0.9),
                                    Colors.lightBlue.withOpacity(0.3),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: TextField(
                            obscureText: true,
                            controller: _TextFeildController_for_password,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person),
                              filled: true,
                              fillColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              prefixIconColor: Colors.black,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none),
                              hintText: 'Enter your password',
                              labelText: 'Password',
                              labelStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'serif'),
                              hintStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'serif',
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: 'serif'),
                          ),
                        ),
                      ),
                      
                      Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const ForgotScreen();
                                  }));
                                },
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'serif',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 21,),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius:  BorderRadius.circular(21),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.5)),
                          gradient: LinearGradient(
                              colors: [
                                Colors.blue.withOpacity(0.9),
                                Colors.blue.withOpacity(0.3),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                        child: TextButton(
                            onPressed: () {
                              login_result();
                            },
                            child: const Text(
                              'Log In ',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'serif',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(height: 55),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 61,
                              ),
                              const Text(
                                'Dont have account? ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'serif',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const SignupScreen();
                                    }));
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Sign Up ',
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontFamily: 'serif',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void login_result() {
    String email = _TextFeildController_for_email.text;
    String password = _TextFeildController_for_password.text;

    // logic for verify
    if (password == '123456') {
      if (email == 'admin@gmail.com') {
        setState(() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const HomeScreen();
          }));
        });
      }
    }
    if (password != '123456' &&
        password != '' &&
        email != 'admin@gmail.com' &&
        email != '') {
      setState(() {
        _result_Login = 'Logging Failed , Please enter password correctly';
        showAlert(context, _result_Login);
      });
    }

// logic for null
    // another logic

    if (password == '') {
      setState(() {
        _result_Login = 'Enter required fields ***password***';
        showAlert(context, _result_Login);
      });
    } else if (email == '') {
      setState(() {
        _result_Login = 'Enter required fields ***E-mail***';
        showAlert(context, _result_Login);
      });
    }
  }
}
