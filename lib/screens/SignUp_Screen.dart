import 'package:flutter/material.dart';
import 'package:online_kachehri/dialog/alert.dart';
import 'package:online_kachehri/screens/Login_Screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _controllerFor_password = TextEditingController();
  final _controllerFor_second_password = TextEditingController();
  String _signUp_res = '';
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
                    height: 37,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/app_logo_white.png'),
                      ),
                     
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.99,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.45),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(54),
                          topRight: Radius.circular(54)),
                         
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'serif',
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      // name code is here
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
                                    Colors.lightBlue.withOpacity(0.8),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: TextField(
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
                              hintText: 'Enter your name',
                              labelText: 'Name',
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
                                    Colors.lightBlue.withOpacity(0.8),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: TextField(
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

                      // mobile code is here

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
                                    Colors.lightBlue.withOpacity(0.8),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.call),
                              filled: true,
                              fillColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              prefixIconColor: Colors.black,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none),
                              hintText: 'Enter your mobile no',
                              labelText: 'Mobile',
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

                      // gender code is here
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
                                    Colors.lightBlue.withOpacity(0.8),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person_add),
                              filled: true,
                              fillColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              prefixIconColor: Colors.black,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none),
                              hintText: 'Enter your gender',
                              labelText: 'Gender',
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
                                    Colors.lightBlue.withOpacity(0.8),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: TextField(
                            obscureText: true,
                            controller: _controllerFor_password,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.password_sharp),
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
                      //

                      //  confirm password code is here
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
                                    Colors.lightBlue.withOpacity(0.8),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: TextField(
                            obscureText: true,
                            controller: _controllerFor_second_password,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.password_rounded),
                              filled: true,
                              fillColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              prefixIconColor: Colors.black,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide.none),
                              hintText: 'Confirm your password',
                              labelText: 'Confirm-Password',
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
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius:  BorderRadius.circular(21),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.5)),
                          gradient: LinearGradient(
                              colors: [
                                  Colors.blue.withOpacity(0.9),
                                    Colors.lightBlue.withOpacity(1.0),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                        child: TextButton(
                            onPressed: () {
                              sign_up_result_page();
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
                                height: 61,
                              ),
                              const Text(
                                'Already have account? ',
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
                                    child: Text(
                                      'Login ',
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontFamily: 'serif',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800),
                                    ),
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

  void sign_up_result_page() {
    String passwordFirst = _controllerFor_password.text;
    String passwordSecond = _controllerFor_second_password.text;
    if (passwordFirst == '123456') {
      if (passwordSecond == '123456') {
        setState(() {
          _signUp_res = ' Sign Up Successfully ';
          showAlert(context, _signUp_res);
        });
      }
    }
    // for empty value
    else if (passwordFirst == '') {
      setState(() {
        _signUp_res = ' Please Enter required fields';
        showAlert(context, _signUp_res);
      });
    } else if (passwordSecond == '') {
      setState(() {
        _signUp_res = ' Please Enter required fields';
        showAlert(context, _signUp_res);
      });
    } else {
      setState(() {
        _signUp_res = ' Failed to Sign up , Enter password correctly';
        showAlert(context, _signUp_res);
      });
    }
  }
}
