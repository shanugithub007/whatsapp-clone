import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:whatsapp/Firebaseauth.dart';
import 'package:whatsapp/mainhome.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passController = TextEditingController();
  String _email = '';
  
  get pword => null;
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.orange,
            Colors.orange.withOpacity(0.900),
            Colors.orange.withOpacity(0.800),
            Colors.orange.withOpacity(0.500),
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, 3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color:
                                              Colors.grey.withOpacity(0.200))),
                                ),
                                child: TextFormField(
                                  controller: emailcontroller,
                                  decoration: const InputDecoration(
                                      label: Text("Email"),
                                      labelStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    // Regular expression for email validation
                                    if (!RegExp(
                                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                        .hasMatch(value)) {
                                      return 'Please enter a valid email';
                                    }
                                    return null;
                                  },
                                  // onSaved: (String? value) {
                                  //   _email = value!;
                                  // },
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color:
                                              Colors.grey.withOpacity(0.200))),
                                ),
                                child: TextField(
                                  controller: passController,
                                  decoration: const InputDecoration(
                                      label: Text("Password"),
                                      labelStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "Forgot Password",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            FireHelper()
                      .signuP(email: _email, password: pword)
                      .then((result) {
                    if (result == null) {
                     Navigator.push(context,
      MaterialPageRoute(builder: (context) => HomeScreen()));
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(result)));
                    }
                  });
                          },
                          child: Container(
                            height: 50,
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange[900],
                            ),
                            child: const Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
