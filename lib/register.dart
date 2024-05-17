// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:tubes_flutter/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 11, 96, 176),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 160.0,
              width: 400.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(50.0),
                  bottomEnd: Radius.circular(50.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin:
                        const EdgeInsetsDirectional.only(top: 60.0, end: 130.0),
                    child: const Text(
                      "Heyy There!",
                      style: TextStyle(
                          color: Color.fromARGB(255, 11, 96, 176),
                          fontFamily: "Poppins",
                          fontSize: 15.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsetsDirectional.only(top: 0.0, end: 30.0),
                    child: const Text(
                      "Welcom to BSEConnect",
                      style: TextStyle(
                          color: Color.fromARGB(255, 11, 96, 176),
                          fontFamily: "Poppins",
                          fontSize: 17.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 20.0, end: 170.0),
              child: const Column(
                children: <Widget>[
                  Text(
                    "Sign In to BSEConnect",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsetsDirectional.only(
                        start: 36.0, end: 36.0, top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsetsDirectional.only(end: 261.0),
                          child: Text(
                            "Username",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            width: 400,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Square corners
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(
                        start: 36.0, end: 36.0, top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsetsDirectional.only(end: 261.0),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            width: 400,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Square corners
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(
                        start: 36.0, end: 36.0, top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsetsDirectional.only(end: 274.0),
                          child: Text(
                            "Subject",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            width: 400,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Square corners
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 50.0, start: 5.0),
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          color: Color.fromARGB(255, 11, 96, 176),
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust corner radius
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
