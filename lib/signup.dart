import 'package:cartify/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController userctrlr = TextEditingController();
  TextEditingController emailctrlr = TextEditingController();
  TextEditingController pwdctrlr = TextEditingController();
  TextEditingController conpwdctrlr = TextEditingController();

  String? validatePassword(String value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff317773),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 200,
                child: Center(
                    child: Image.asset(
                      "assets/image/img_1.png",
                      width: 157,
                      height: 111,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                height: 800,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Text(
                          "WELCOME !",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Sen",
                              color: Colors.black,
                              fontSize: 26,
                              letterSpacing: 3),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      SizedBox(
                        height: 40,
                        width: 280,
                        child: TextFormField(
                          controller: userctrlr,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            hintText: "Enter Name",
                            iconColor: Colors.grey.shade700,
                            labelText: "Full Name",
                            prefixIcon: Icon(Icons.person),
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Name is empty";
                            }
                            if (value.contains("@")) {
                              return "It is not a valid name";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(6)),
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: SizedBox(
                          height: 40,
                          width: 280,
                          child: TextFormField(
                            controller: emailctrlr,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              hintText: "Enter Email",
                              iconColor: Colors.grey.shade700,
                              labelText: "Email Id",
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                            validator: (String? value) {
                              String pattern =
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                              RegExp regex = RegExp(pattern);
                              if (!regex.hasMatch(value!))
                                return 'Enter Valid Email';
                              else
                                return null;
                            },
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(6)),
                      SizedBox(
                        height: 40,
                        width: 280,
                        child: TextFormField(
                          controller: pwdctrlr,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            hintText: "Enter password",
                            iconColor: Colors.grey.shade700,
                            labelText: "Password",
                            prefixIcon: Icon(Icons.lock_outline),
                          ),
                          validator: (String? value) {
                            return validatePassword(value!);
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(6)),
                      SizedBox(
                        height: 40,
                        width: 280,
                        child: TextFormField(
                          controller: conpwdctrlr,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            hintText: "Confirm password",
                            iconColor: Colors.grey.shade700,
                            labelText: "Confirm Password",
                            prefixIcon: Icon(Icons.lock_outline),
                          ),
                          validator: (String? value) {
                            if (value != pwdctrlr.text) {
                              return 'Passwords do not match';
                            }
                            return validatePassword(value!);
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      SizedBox(
                        height: 40,
                        width: 280,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()),
                              );
                            }
                          },
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                color: Color(0xffD9D9D9),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 1),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 6,
                              backgroundColor: Color(0xff1C3C3A),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                          child: Text(
                            "or",
                            style: TextStyle(fontFamily: "Sen", fontSize: 16),
                          )),
                      Center(
                          child: Image.asset(
                            "assets/image/img.png",
                            height: 38,
                            width: 96,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Row(
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(fontFamily: "Sen", fontSize: 16),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()),
                                  );
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontFamily: "Sen", fontSize: 16),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
