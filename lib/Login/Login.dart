import 'package:flutter/material.dart';
import 'package:login/Root/Home.dart';
import 'package:login/Login/ForgetPassword.dart';
import 'package:login/Login/Register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  var username = new TextEditingController();
  var password = new TextEditingController();
  var user = "admin";
  var pass = 123456;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: Icon(
          Icons.login,
          color: Colors.yellowAccent,
          size: 30,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Container(
            height: 500,
            width: 360,
            color: Colors.white.withOpacity(0.5),
            child: ListView(
              children: [
                Column(
                  children: [
                    // const Image(image: AssetImage('assets/images/signin.png')),
                    // Container(
                    //   height: 300,
                    //   width: 300,
                    //   decoration: const BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage("assets/images/signin.png"),
                    //     ),
                    //   ),
                    // ),
                    Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/login.png")),
                        // border: Border.all(color: Colors.black, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: username,
                        decoration: InputDecoration(
                            labelText: "Enter Username",
                            prefixIcon: Icon(Icons.person)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: password,
                        decoration: InputDecoration(
                            labelText: "Enter Password",
                            prefixIcon: Icon(Icons.password)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //remember me
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (value) {},
                              ),
                              Text("Remember Me"),
                            ],
                          ),

                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return ForgetPassword();
                                }));
                              },
                              child: Text(
                                "Forget Password ?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // Buttons of the login page

                    SizedBox(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.yellow[200]),
                              ),
                              onPressed: () {
                                match(context);
                              },
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(fontSize: 15),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                              onTap: () {
                                username.clear();
                                password.clear();
                              },
                              child: const Text(
                                "RESET",
                                style: TextStyle(fontSize: 15),
                              )),
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Register()));
                          },
                          child: Text(
                            "Click Here To Create a new account ?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
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

  void match(BuildContext context) {
    if (username.text == user) {
      if (int.parse(password.text) == pass) {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Home();
        }));
      }
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Login Status"),
              content: Text("Invalid username"),
            );
          });
    }
  }
}
