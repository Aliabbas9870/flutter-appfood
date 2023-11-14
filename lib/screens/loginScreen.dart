import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
            child: Text(
          "Login ",
          style: TextStyle(fontSize: 29),
        )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height: 300,
            child: Lottie.asset("animations/login.json"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Container(
              //  color: const Color.fromARGB(255, 212, 210, 210),
              width: double.infinity,
              height: 550,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      "Login Account",
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email),
                          hintText: "Enter Your Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.deepOrangeAccent,
                              width: 3,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email),
                          hintText: "Enter Your Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.deepOrangeAccent,
                              width: 3,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: Text("Login Account")),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          child: Row(
                            children: [
                              Text("Register Your Account"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.account_box)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Card(
                          child: Row(
                            children: [
                              Text("Your Email"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.email),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(),

// with custom text
                    SignInButton(
                      Buttons.google,
                      text: "Sign up with Google",
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
          const Divider(),
        ]),
      ),
    );
  }
}
