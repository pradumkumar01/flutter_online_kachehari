import 'package:flutter/material.dart';
import 'package:online_kachehri/dialog/alert.dart';

import 'Login_Screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final _emailCheckController = TextEditingController();
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.topLeft,
                        child: Image.asset('assets/images/app_logo_lawyer.png'),
                      ),
                      const Text(
                        'Reset Password\n here',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'serif',
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.45),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(54),
                          bottomRight: Radius.circular(54)),
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 35,
                      ),
                      const Text(
                        'Forgot password',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'serif',
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 32,
                      ),

                      // email code here

                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Container(
                          width: 300,
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
                            controller: _emailCheckController,
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
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(0),
                            topLeft: Radius.circular(21),
                            bottomRight: Radius.circular(21),
                          ),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.5)),
                          gradient: LinearGradient(
                              colors: [
                                   Colors.blue.withOpacity(0.9),
                                    Colors.lightBlue.withOpacity(0.8),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                        child: TextButton(
                            onPressed: () {
                              submit_check();
                            },
                            child: const Text(
                              'Submit',
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 21,
                              ),
                              const Text(
                                'Back to login  ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'serif',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const Login_Screen();
                                    }));
                                  },
                                  child: const Center(
                                    child: Icon(Icons.home, size: 32),
                                  ))
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

  void submit_check() {
    String checkRes = _emailCheckController.text;
    if (checkRes == "") {
      showAlert(context, "Please Enter require field ");
    }
  }
}
