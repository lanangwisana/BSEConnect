// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:tubes_flutter/login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 159.0,
              width: 400.0,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 11, 96, 176),
                borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(50.0),
                  bottomStart: Radius.circular(50.0),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                            top: 55.0, start: 70.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin:
                                  const EdgeInsetsDirectional.only(end: 65.0),
                              child: const Column(
                                children: <Widget>[
                                  Text(
                                    "Heyy Tya!",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 15.0,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              "Get ready for today",
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
                    ],
                  ),
                  Container(
                    height: 56.0,
                    width: 56.0,
                    margin: const EdgeInsetsDirectional.only(start: 50.0),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://s3-alpha-sig.figma.com/img/54ae/f3fe/e175e59f276c50cba2f035bd04800518?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bQfPED0dzTvR~syQZ2zNeIfn8nEHsRDgoA~C-~hoajq2uGGXpYyZqZ~ZZoBo1kJndE0imLxOXDYH9yOImutU5lFyNUAVXP7SUk0oyHgJ0Kzc0qvg~ux--fzdj01cjJVrwwkP7geWA24gGiCIf9esief1iem2HtXQlQd8jmmAgmUf5DYmo8TVBbmPdczDwoRRrMMjfm24jfAFOFp5twYQW1WtO7MscJTN52gwk4QeouVA0EWvdDSKnHe2MwnkHPscjAgLJe3airWbnQxqZHJxBdQWfmeWNibr0cK-hFo6Z8YGU380wBzaI~rvRE7L17ZgZGk4Z5I8eLiwEAifSrCUTw__"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  //BAGIAN BASIC INFORMATION
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 300.0,
                          margin: const EdgeInsetsDirectional.only(top: 20.0),
                          padding: const EdgeInsetsDirectional.only(
                              top: 5.0, bottom: 5.0, start: 10.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 11, 96, 176),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Text(
                            "Basic Information",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 12.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              //Kasi navigator disini nanti
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 25.0,
                                  width: 290,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black))),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: const Text(
                                          "Name",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Poppins",
                                              fontSize: 12.0,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                start: 200.0),
                                        child: const Text("Tya",
                                            style: TextStyle(
                                                color:
                                                    Color.fromARGB(90, 0, 0, 0),
                                                fontFamily: "Poppins",
                                                fontSize: 12.0,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                start: 25.0),
                                        child: SvgPicture.string(
                                            '''<svg xmlns="http://www.w3.org/2000/svg" width="8" height="12" viewBox="0 0 8 12" fill="none">
                                                <g clip-path="url(#clip0_56_1370)">
                                                  <path d="M0.852276 11.8352C0.632601 11.6156 0.632601 11.2594 0.852276 11.0398L5.89201 6L0.852277 0.960226C0.632602 0.740552 0.632602 0.384451 0.852277 0.164776C1.07195 -0.0548978 1.42805 -0.0548978 1.64773 0.164776L7.08525 5.60228C7.30492 5.82195 7.30492 6.17805 7.08525 6.39773L1.64773 11.8352C1.42805 12.0549 1.07195 12.0549 0.852276 11.8352Z" fill="#0B60B0"/>
                                                </g>
                                                <defs>
                                                  <clipPath id="clip0_56_1370">
                                                    <rect width="7.5" height="12" fill="white" transform="translate(8 12) rotate(-180)"/>
                                                  </clipPath>
                                                </defs>
                                              </svg>'''),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              //Kasi navigatir disini nanti
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 25.0,
                                  width: 290,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black))),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: const Text(
                                          "Email",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Poppins",
                                              fontSize: 12.0,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                start: 90.0),
                                        child: const Text(
                                            "tyamarissa@gmail.com",
                                            style: TextStyle(
                                                color:
                                                    Color.fromARGB(90, 0, 0, 0),
                                                fontFamily: "Poppins",
                                                fontSize: 12.0,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                start: 25.0),
                                        child: SvgPicture.string(
                                            '''<svg xmlns="http://www.w3.org/2000/svg" width="8" height="12" viewBox="0 0 8 12" fill="none">
                                                <g clip-path="url(#clip0_56_1370)">
                                                  <path d="M0.852276 11.8352C0.632601 11.6156 0.632601 11.2594 0.852276 11.0398L5.89201 6L0.852277 0.960226C0.632602 0.740552 0.632602 0.384451 0.852277 0.164776C1.07195 -0.0548978 1.42805 -0.0548978 1.64773 0.164776L7.08525 5.60228C7.30492 5.82195 7.30492 6.17805 7.08525 6.39773L1.64773 11.8352C1.42805 12.0549 1.07195 12.0549 0.852276 11.8352Z" fill="#0B60B0"/>
                                                </g>
                                                <defs>
                                                  <clipPath id="clip0_56_1370">
                                                    <rect width="7.5" height="12" fill="white" transform="translate(8 12) rotate(-180)"/>
                                                  </clipPath>
                                                </defs>
                                              </svg>'''),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 25.0,
                                  width: 290,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black))),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: const Text(
                                          "Subject",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Poppins",
                                              fontSize: 12.0,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                start: 154.0),
                                        child: const Text("Chemistry",
                                            style: TextStyle(
                                                color:
                                                    Color.fromARGB(90, 0, 0, 0),
                                                fontFamily: "Poppins",
                                                fontSize: 12.0,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                start: 25.0),
                                        child: SvgPicture.string(
                                            '''<svg xmlns="http://www.w3.org/2000/svg" width="8" height="12" viewBox="0 0 8 12" fill="none">
                                                <g clip-path="url(#clip0_56_1370)">
                                                  <path d="M0.852276 11.8352C0.632601 11.6156 0.632601 11.2594 0.852276 11.0398L5.89201 6L0.852277 0.960226C0.632602 0.740552 0.632602 0.384451 0.852277 0.164776C1.07195 -0.0548978 1.42805 -0.0548978 1.64773 0.164776L7.08525 5.60228C7.30492 5.82195 7.30492 6.17805 7.08525 6.39773L1.64773 11.8352C1.42805 12.0549 1.07195 12.0549 0.852276 11.8352Z" fill="#0B60B0"/>
                                                </g>
                                                <defs>
                                                  <clipPath id="clip0_56_1370">
                                                    <rect width="7.5" height="12" fill="white" transform="translate(8 12) rotate(-180)"/>
                                                  </clipPath>
                                                </defs>
                                              </svg>'''),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //BAGIAN ACCOUNT
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 300.0,
                          margin: const EdgeInsetsDirectional.only(top: 20.0),
                          padding: const EdgeInsetsDirectional.only(
                              top: 5.0, bottom: 5.0, start: 10.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 11, 96, 176),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Text(
                            "My Account",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: 12.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              //Kasi navigator disini nanti
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 25.0,
                                  width: 290,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black))),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: const Text(
                                          "Edit profile",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Poppins",
                                              fontSize: 12.0,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                start: 215.0),
                                        child: SvgPicture.string(
                                            '''<svg xmlns="http://www.w3.org/2000/svg" width="8" height="12" viewBox="0 0 8 12" fill="none">
                                                <g clip-path="url(#clip0_56_1370)">
                                                  <path d="M0.852276 11.8352C0.632601 11.6156 0.632601 11.2594 0.852276 11.0398L5.89201 6L0.852277 0.960226C0.632602 0.740552 0.632602 0.384451 0.852277 0.164776C1.07195 -0.0548978 1.42805 -0.0548978 1.64773 0.164776L7.08525 5.60228C7.30492 5.82195 7.30492 6.17805 7.08525 6.39773L1.64773 11.8352C1.42805 12.0549 1.07195 12.0549 0.852276 11.8352Z" fill="#0B60B0"/>
                                                </g>
                                                <defs>
                                                  <clipPath id="clip0_56_1370">
                                                    <rect width="7.5" height="12" fill="white" transform="translate(8 12) rotate(-180)"/>
                                                  </clipPath>
                                                </defs>
                                              </svg>'''),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              //Kasi navigatir disini nanti
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 25.0,
                                  width: 290,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black))),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: const Text(
                                          "Change password",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Poppins",
                                              fontSize: 12.0,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                start: 176.0),
                                        child: SvgPicture.string(
                                            '''<svg xmlns="http://www.w3.org/2000/svg" width="8" height="12" viewBox="0 0 8 12" fill="none">
                                                <g clip-path="url(#clip0_56_1370)">
                                                  <path d="M0.852276 11.8352C0.632601 11.6156 0.632601 11.2594 0.852276 11.0398L5.89201 6L0.852277 0.960226C0.632602 0.740552 0.632602 0.384451 0.852277 0.164776C1.07195 -0.0548978 1.42805 -0.0548978 1.64773 0.164776L7.08525 5.60228C7.30492 5.82195 7.30492 6.17805 7.08525 6.39773L1.64773 11.8352C1.42805 12.0549 1.07195 12.0549 0.852276 11.8352Z" fill="#0B60B0"/>
                                                </g>
                                                <defs>
                                                  <clipPath id="clip0_56_1370">
                                                    <rect width="7.5" height="12" fill="white" transform="translate(8 12) rotate(-180)"/>
                                                  </clipPath>
                                                </defs>
                                              </svg>'''),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.question,
                                    animType: AnimType.topSlide,
                                    title: 'Logout Confirmation',
                                    desc:
                                        'Are you sure you want to log out from this account?',
                                    btnCancelOnPress: () {
                                      // Cancel action
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Profile(),
                                        ),
                                      );
                                    },
                                    btnOkOnPress: () {
                                      // Logout action
                                      // Replace this with your actual logout logic
                                      // print('User logged out!');
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Login(),
                                        ),
                                      ); // Close the dialog
                                    },
                                  ).show();
                                },
                                child: Container(
                                  height: 25.0,
                                  width: 290,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black))),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: const Text(
                                          "Log out",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Poppins",
                                              fontSize: 12.0,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                start: 233.0),
                                        child: SvgPicture.string(
                                            '''<svg xmlns="http://www.w3.org/2000/svg" width="8" height="12" viewBox="0 0 8 12" fill="none">
                                                <g clip-path="url(#clip0_56_1370)">
                                                  <path d="M0.852276 11.8352C0.632601 11.6156 0.632601 11.2594 0.852276 11.0398L5.89201 6L0.852277 0.960226C0.632602 0.740552 0.632602 0.384451 0.852277 0.164776C1.07195 -0.0548978 1.42805 -0.0548978 1.64773 0.164776L7.08525 5.60228C7.30492 5.82195 7.30492 6.17805 7.08525 6.39773L1.64773 11.8352C1.42805 12.0549 1.07195 12.0549 0.852276 11.8352Z" fill="#0B60B0"/>
                                                </g>
                                                <defs>
                                                  <clipPath id="clip0_56_1370">
                                                    <rect width="7.5" height="12" fill="white" transform="translate(8 12) rotate(-180)"/>
                                                  </clipPath>
                                                </defs>
                                              </svg>'''),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
