// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubes_flutter/presensi.dart';
import 'package:tubes_flutter/profile.dart';
import 'package:tubes_flutter/re_schadule.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 17, 55, 207),
        ),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                Positioned(
                  child: Container(
                    margin: const EdgeInsetsDirectional.only(bottom: 35.0),
                    height: 160.0,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 11, 96, 176),
                      borderRadius: BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(50.0),
                        bottomEnd: Radius.circular(50.0),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 66.0,
                          width: 66.0,
                          margin: const EdgeInsetsDirectional.only(
                              top: 51.0, start: 37.0),
                          padding: const EdgeInsetsDirectional.only(end: 10.0),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/54ae/f3fe/e175e59f276c50cba2f035bd04800518?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bQfPED0dzTvR~syQZ2zNeIfn8nEHsRDgoA~C-~hoajq2uGGXpYyZqZ~ZZoBo1kJndE0imLxOXDYH9yOImutU5lFyNUAVXP7SUk0oyHgJ0Kzc0qvg~ux--fzdj01cjJVrwwkP7geWA24gGiCIf9esief1iem2HtXQlQd8jmmAgmUf5DYmo8TVBbmPdczDwoRRrMMjfm24jfAFOFp5twYQW1WtO7MscJTN52gwk4QeouVA0EWvdDSKnHe2MwnkHPscjAgLJe3airWbnQxqZHJxBdQWfmeWNibr0cK-hFo6Z8YGU380wBzaI~rvRE7L17ZgZGk4Z5I8eLiwEAifSrCUTw__"),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 60.0, end: 0.0),
                            ),
                            Container(
                              margin:
                                  const EdgeInsetsDirectional.only(end: 64.0),
                              child: const Text(
                                "Heyy Tya!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 15.0,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700),
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
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(start: 39.0, end: 29.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(
                          color: const Color.fromARGB(255, 11, 96, 176),
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      children: [
                        Image.network(
                          'https://s3-alpha-sig.figma.com/img/15f1/b4b3/cd0bfc0ce2a95852c30c636148a67ad7?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NUPbOZCYiU57gX7EZuBBFkzkK13b3ToEeyUcn8jkQNLRqtEMPgMQZ9LKLBUmpL~jKJtgJ46yxv4Ik2PNhf0uokprnQ5R-fXydVa~2R6yY3smHl5c~pR5uNEAVKGMRXbO-kSXHw8S6rT-ENb4sBRk3zB9ZFdtWYkCZHDrbqmupd5EHMEsyNZZix4SWo6Wyiys2JncF5lKvqt8M7mIZGHcv8WbnikDTarn7SX3LcwLYnm08rzqE7zN1zJFrJP8~D1u~tiriN42ptZXLQ11AZ40TZH3f3InNIbnDTqfpRNH0Vhe-XR6Kj~rtl0F6HmPqfLmm-u0ps9BhdzZ-lzdbBC0bw__',
                          width: 125,
                          height: 125,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Presence",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                SvgPicture.string(
                                    '''<svg xmlns="http://www.w3.org/2000/svg" width="158" height="9" viewBox="0 0 158 9" fill="none">
                                    <rect width="158" height="9" rx="4.5" fill="#D9D9D9"/>
                                    <rect width="138" height="9" rx="4.5" fill="#0B60B0"/>
                                  </svg>'''),
                                Container(
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 3.0, end: 10.0),
                                  child: const Text(
                                    "80%",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins",
                                        fontSize: 10.0,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 135.0,
              width: 400.0,
              margin: const EdgeInsetsDirectional.only(top: 15.0, start: 35.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 11, 96, 176),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsetsDirectional.all(15.0),
                        ),
                        Row(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsetsDirectional.all(10.0),
                            ),
                            SvgPicture.string(
                              '''<svg xmlns="http://www.w3.org/2000/svg" width="32" height="26" viewBox="0 0 32 26" fill="none">
                                <path d="M10.0074 4.8044C11.5538 4.8044 12.8074 6.05804 12.8074 7.60448V22.8052C12.8074 24.3516 11.5538 25.6052 10.0074 25.6052H2.80008C1.25364 25.6052 0 24.3516 0 22.8052V7.60448C0 6.05804 1.25364 4.8044 2.80008 4.8044H10.0074ZM10.0074 7.20447H2.80008C2.57917 7.20447 2.40007 7.38356 2.40007 7.60448V22.8052C2.40007 23.0261 2.57917 23.2052 2.80008 23.2052H10.0074C10.2283 23.2052 10.4074 23.0261 10.4074 22.8052V7.60448C10.4074 7.38356 10.2283 7.20447 10.0074 7.20447ZM6.80376 19.2001C7.46651 19.2001 8.00379 19.7372 8.00379 20.4001C8.00379 21.0077 7.55232 21.5096 6.96659 21.5891L6.80376 21.6002H6.00373C5.34096 21.6002 4.8037 21.0629 4.8037 20.4001C4.8037 19.7926 5.25515 19.2905 5.8409 19.211L6.00373 19.2001H6.80376ZM30.8 18.3998C31.4627 18.3998 32 18.937 32 19.5998C32 20.2073 31.5485 20.7094 30.9627 20.7889L30.8 20.7998L14.4004 20.799V18.399L30.8 18.3998ZM26.0008 0C27.5472 0 28.8009 1.25364 28.8009 2.80008V14.8009C28.8009 16.3474 27.5472 17.601 26.0008 17.601L14.4004 17.6005V15.2005L26.0008 15.2009C26.2218 15.2009 26.4008 15.0219 26.4008 14.8009V2.80008C26.4008 2.57917 26.2218 2.40007 26.0008 2.40007H6.00018C5.77926 2.40007 5.60017 2.57917 5.60017 2.80008L5.59857 3.1985H3.2001V2.80008C3.2001 1.25364 4.45373 0 6.00018 0H26.0008Z" fill="white"/>
                              </svg>''',
                              height: 35.0,
                              width: 45.0,
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.all(5.0),
                            ),
                            const Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 10.0),
                                ),
                                Text(
                                  "Chemistry",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Grade: X",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontSize: 8.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(end: 10.0),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.only(end: 15.0),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsetsDirectional.only(top: 10.0),
                            ),
                            const Text(
                              "Presence",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontSize: 12.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: <Widget>[
                                const Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(top: 15.0),
                                ),
                                SvgPicture.string(
                                    '''<svg xmlns="http://www.w3.org/2000/svg" width="97" height="9" viewBox="0 0 97 9" fill="none">
                                    <rect x="0.5" y="0.5" width="96" height="8" rx="4" fill="#D9D9D9" stroke="white"/>
                                    <rect x="1" y="1" width="85" height="7" rx="3.5" fill="#0B60B0"/>
                                  </svg>'''),
                                const Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 5.0),
                                ),
                                const Text(
                                  "80%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins",
                                      fontSize: 10.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(start: 30.0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(40, 204, 233, 255),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsetsDirectional.all(15.0),
                        ),
                        Row(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsetsDirectional.all(10.0),
                            ),
                            SvgPicture.string(
                              '''<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
                                <rect x="0.571429" y="0.571429" width="30.8571" height="30.8571" rx="6.28571" fill="#EBF6FF" stroke="#0F2C59" stroke-width="1.14286"/>
                                <path d="M5.71387 9.42864C5.71387 7.37729 7.3768 5.71436 9.42815 5.71436H22.571C24.6223 5.71436 26.2853 7.37729 26.2853 9.42864V22.5715C26.2853 24.6228 24.6223 26.2858 22.571 26.2858H9.42815C7.3768 26.2858 5.71387 24.6228 5.71387 22.5715V9.42864ZM9.42815 7.42864C8.32358 7.42864 7.42815 8.32407 7.42815 9.42864V15.1429H15.1424V7.42864H9.42815ZM15.1424 16.8572H7.42815V22.5715C7.42815 23.6761 8.32358 24.5715 9.42815 24.5715H15.1424V16.8572ZM16.8567 16.8572V24.5715H22.571C23.6756 24.5715 24.571 23.6761 24.571 22.5715V16.8572H16.8567ZM24.571 15.1429V9.42864C24.571 8.32407 23.6756 7.42864 22.571 7.42864H16.8567V15.1429H24.571Z" fill="#0F2C59"/>
                              </svg>''',
                              height: 35.0,
                              width: 45.0,
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.all(5.0),
                            ),
                            const Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 10.0),
                                ),
                                Text(
                                  "Chemistry",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 96, 176),
                                      fontFamily: "Poppins",
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Grade: XI A",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 96, 176),
                                      fontFamily: "Poppins",
                                      fontSize: 8.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(end: 10.0),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.only(end: 15.0),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsetsDirectional.only(top: 10.0),
                            ),
                            const Text(
                              "Presence",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 11, 96, 176),
                                  fontFamily: "Poppins",
                                  fontSize: 12.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: <Widget>[
                                const Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(top: 15.0),
                                ),
                                SvgPicture.string(
                                    '''<svg xmlns="http://www.w3.org/2000/svg" width="97" height="9" viewBox="0 0 97 9" fill="none">
                                    <rect x="0.5" y="0.5" width="96" height="8" rx="4" fill="#D9D9D9" stroke="white"/>
                                    <rect x="1" y="1" width="85" height="7" rx="3.5" fill="#0B60B0"/>
                                  </svg>'''),
                                const Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 5.0),
                                ),
                                const Text(
                                  "80%",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 96, 176),
                                      fontFamily: "Poppins",
                                      fontSize: 10.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 135.0,
              width: 400.0,
              margin: const EdgeInsetsDirectional.only(top: 15.0, start: 35.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(40, 204, 233, 255),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsetsDirectional.all(15.0),
                        ),
                        Row(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsetsDirectional.all(10.0),
                            ),
                            SvgPicture.string(
                              '''<svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 44 44" fill="none">
                                  <circle cx="22" cy="22" r="21" fill="#EBF6FF" stroke="#0F2C59" stroke-width="2"/>
                                  <path d="M27.3756 7.66576C27.5634 7.10239 27.2591 6.49339 26.6957 6.30552C26.1323 6.11764 25.5234 6.42205 25.3354 6.98542L24.2601 10.2098C24.0723 10.7732 24.3767 11.3822 24.94 11.5701C25.5035 11.7579 26.1124 11.4535 26.3003 10.8902L27.3756 7.66576ZM33.9257 7.64054C34.3456 8.06048 34.3456 8.74131 33.9257 9.16123L30.3414 12.7455C29.9215 13.1655 29.2407 13.1655 28.8208 12.7455C28.4009 12.3256 28.4009 11.6448 28.8208 11.2248L32.4051 7.64054C32.825 7.22062 33.5058 7.22062 33.9257 7.64054ZM15.7117 10.6492C16.7294 8.53705 19.5518 8.10762 21.1517 9.82153L31.1968 20.5831C32.761 22.2588 32.2061 24.9768 30.1101 25.9055L25.207 28.0778C25.4853 28.7518 25.6388 29.4906 25.6388 30.2651C25.6388 33.4325 23.0713 36 19.9039 36C17.6164 36 15.6418 34.6608 14.7212 32.7235L12.689 33.6239C11.7389 34.0448 10.629 33.8549 9.87298 33.1419L7.81023 31.1966C6.99193 30.4248 6.76767 29.212 7.25589 28.1988L15.7117 10.6492ZM16.689 31.8517C17.2743 33.0354 18.494 33.8494 19.9039 33.8494C21.8836 33.8494 23.4882 32.2447 23.4882 30.2651C23.4882 29.8007 23.3999 29.3569 23.2392 28.9495L16.689 31.8517ZM19.5795 11.289C19.0119 10.6808 18.0103 10.8332 17.6491 11.5827L9.19331 29.1323C9.11193 29.3012 9.14932 29.5034 9.28571 29.632L11.3485 31.5773C11.4745 31.6961 11.6595 31.7278 11.8179 31.6575L29.239 23.9391C29.9828 23.6096 30.1797 22.6452 29.6245 22.0505L19.5795 11.289ZM29.9395 16.2853C29.9395 15.6914 30.421 15.21 31.0148 15.21H33.8823C34.4761 15.21 34.9576 15.6914 34.9576 16.2853C34.9576 16.8792 34.4761 17.3606 33.8823 17.3606H31.0148C30.421 17.3606 29.9395 16.8792 29.9395 16.2853Z" fill="#0F2C59"/>
                                </svg>''',
                              height: 35.0,
                              width: 45.0,
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.all(5.0),
                            ),
                            const Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 10.0),
                                ),
                                Text(
                                  "Chemistry",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 96, 176),
                                      fontFamily: "Poppins",
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Grade: XI B",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 96, 176),
                                      fontFamily: "Poppins",
                                      fontSize: 8.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(end: 10.0),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.only(end: 15.0),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsetsDirectional.only(top: 10.0),
                            ),
                            const Text(
                              "Presence",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 11, 96, 176),
                                  fontFamily: "Poppins",
                                  fontSize: 12.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: <Widget>[
                                const Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(top: 15.0),
                                ),
                                SvgPicture.string(
                                    '''<svg xmlns="http://www.w3.org/2000/svg" width="97" height="9" viewBox="0 0 97 9" fill="none">
                                    <rect x="0.5" y="0.5" width="96" height="8" rx="4" fill="#D9D9D9" stroke="white"/>
                                    <rect x="1" y="1" width="85" height="7" rx="3.5" fill="#0B60B0"/>
                                  </svg>'''),
                                const Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 5.0),
                                ),
                                const Text(
                                  "80%",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 96, 176),
                                      fontFamily: "Poppins",
                                      fontSize: 10.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(start: 30.0),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(40, 204, 233, 255),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsetsDirectional.all(15.0),
                        ),
                        Row(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsetsDirectional.all(10.0),
                            ),
                            SvgPicture.string(
                              '''<svg xmlns="http://www.w3.org/2000/svg" width="42" height="42" viewBox="0 0 42 42" fill="none">
                                  <path d="M21 7.875C12.7848 7.875 6.125 14.5348 6.125 22.75C6.125 26.8532 7.78472 30.5664 10.4726 33.2589C10.9847 33.772 10.984 34.6031 10.4709 35.1152C9.95794 35.6272 9.12691 35.6265 8.61479 35.1136C5.45571 31.9489 3.5 27.5767 3.5 22.75C3.5 13.085 11.335 5.25 21 5.25C30.6649 5.25 38.5 13.085 38.5 22.75C38.5 27.5767 36.5442 31.9489 33.3853 35.1136C32.873 35.6265 32.042 35.6272 31.529 35.1152C31.0161 34.6031 31.0152 33.772 31.5275 33.2589C34.2153 30.5664 35.875 26.8532 35.875 22.75C35.875 14.5348 29.2152 7.875 21 7.875ZM21 14C16.1675 14 12.25 17.9176 12.25 22.75C12.25 25.1681 13.2292 27.3551 14.8158 28.9401C15.3286 29.4525 15.329 30.2836 14.8167 30.7963C14.3044 31.3091 13.4733 31.3096 12.9605 30.7972C10.9012 28.7399 9.625 25.8927 9.625 22.75C9.625 16.4678 14.7178 11.375 21 11.375C27.2823 11.375 32.375 16.4678 32.375 22.75C32.375 25.8927 31.0987 28.7399 29.0395 30.7972C28.5268 31.3096 27.6957 31.3091 27.1833 30.7963C26.6711 30.2836 26.6714 29.4525 27.1842 28.9401C28.7709 27.3551 29.75 25.1681 29.75 22.75C29.75 17.9176 25.8325 14 21 14ZM21 18.375C18.5838 18.375 16.625 20.3338 16.625 22.75C16.625 25.1662 18.5838 27.125 21 27.125C23.4162 27.125 25.375 25.1662 25.375 22.75C25.375 20.3338 23.4162 18.375 21 18.375ZM19.25 22.75C19.25 21.7835 20.0335 21 21 21C21.9665 21 22.75 21.7835 22.75 22.75C22.75 23.7165 21.9665 24.5 21 24.5C20.0335 24.5 19.25 23.7165 19.25 22.75Z" fill="#212121"/>
                                </svg>''',
                              height: 35.0,
                              width: 45.0,
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.all(5.0),
                            ),
                            const Column(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 10.0),
                                ),
                                Text(
                                  "Chemistry",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 96, 176),
                                      fontFamily: "Poppins",
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Grade: X",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 96, 176),
                                      fontFamily: "Poppins",
                                      fontSize: 12.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(end: 10.0),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.only(end: 15.0),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsetsDirectional.only(top: 10.0),
                            ),
                            const Text(
                              "Presence",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 11, 96, 176),
                                  fontFamily: "Poppins",
                                  fontSize: 12.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: <Widget>[
                                const Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(top: 15.0),
                                ),
                                SvgPicture.string(
                                    '''<svg xmlns="http://www.w3.org/2000/svg" width="97" height="9" viewBox="0 0 97 9" fill="none">
                                    <rect x="0.5" y="0.5" width="96" height="8" rx="4" fill="#D9D9D9" stroke="white"/>
                                    <rect x="1" y="1" width="85" height="7" rx="3.5" fill="#0B60B0"/>
                                  </svg>'''),
                                const Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 5.0),
                                ),
                                const Text(
                                  "80%",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 11, 96, 176),
                                      fontFamily: "Poppins",
                                      fontSize: 10.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.0,
              margin: const EdgeInsetsDirectional.only(top: 81.2),
              padding: const EdgeInsetsDirectional.only(top: 0.0, bottom: 0.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 11, 96, 176),
                  borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(20.0),
                      topEnd: Radius.circular(20.0))),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: SvgPicture.string(
                        '''<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none">
                            <path d="M13.1869 3.16486C14.2343 2.28163 15.7657 2.28163 16.8131 3.16487L25.2506 10.28C25.8843 10.8144 26.25 11.6011 26.25 12.4301V24.0674C26.25 25.2755 25.2706 26.2549 24.0625 26.2549H19.6875C18.4794 26.2549 17.5 25.2755 17.5 24.0674V17.8085C17.5 17.636 17.3601 17.496 17.1875 17.496H12.8125C12.6399 17.496 12.5 17.636 12.5 17.8085V24.0674C12.5 25.2755 11.5206 26.2549 10.3125 26.2549H5.9375C4.72938 26.2549 3.75 25.2755 3.75 24.0674V12.4301C3.75 11.6011 4.11569 10.8144 4.7494 10.28L13.1869 3.16486ZM15.6044 4.59825C15.2552 4.30383 14.7448 4.30383 14.3956 4.59825L5.95814 11.7134C5.7469 11.8915 5.625 12.1538 5.625 12.4301V24.0674C5.625 24.24 5.76491 24.3799 5.9375 24.3799H10.3125C10.4851 24.3799 10.625 24.24 10.625 24.0674V17.8085C10.625 16.6004 11.6044 15.621 12.8125 15.621H17.1875C18.3956 15.621 19.375 16.6004 19.375 17.8085V24.0674C19.375 24.24 19.5149 24.3799 19.6875 24.3799H24.0625C24.2351 24.3799 24.375 24.24 24.375 24.0674V12.4301C24.375 12.1538 24.2531 11.8915 24.0419 11.7134L15.6044 4.59825Z" fill="white"/>
                          </svg>''',
                        semanticsLabel: "Home icon",
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: SvgPicture.string(
                        '''<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none">
                              <path d="M21.6004 10.8996C21.9665 11.2657 21.9665 11.8593 21.6004 12.2254L19.1004 14.7254C18.7343 15.0915 18.1407 15.0915 17.7746 14.7254L16.5246 13.4754C16.1585 13.1093 16.1585 12.5157 16.5246 12.1496C16.8907 11.7835 17.4843 11.7835 17.8504 12.1496L18.4375 12.7366L20.2746 10.8996C20.6407 10.5335 21.2343 10.5335 21.6004 10.8996ZM21.6004 19.1004C21.9665 18.7343 21.9665 18.1407 21.6004 17.7746C21.2343 17.4085 20.6407 17.4085 20.2746 17.7746L18.4375 19.6116L17.8504 19.0246C17.4843 18.6585 16.8907 18.6585 16.5246 19.0246C16.1585 19.3907 16.1585 19.9843 16.5246 20.3504L17.7746 21.6004C18.1407 21.9665 18.7343 21.9665 19.1004 21.6004L21.6004 19.1004ZM8.75 12.8125C8.75 12.2947 9.16974 11.875 9.6875 11.875H14.0626C14.5804 11.875 15.0001 12.2947 15.0001 12.8125C15.0001 13.3302 14.5804 13.75 14.0626 13.75H9.6875C9.16974 13.75 8.75 13.3302 8.75 12.8125ZM9.68758 18.75C9.16981 18.75 8.75008 19.1698 8.75008 19.6875C8.75008 20.2052 9.16981 20.625 9.68758 20.625H14.0625C14.5802 20.625 15 20.2052 15 19.6875C15 19.1698 14.5802 18.75 14.0625 18.75H9.68758ZM19.9829 5.00085C19.8279 3.59421 18.6355 2.5 17.1875 2.5H12.8125C11.3651 2.5 10.173 3.5934 10.0172 4.9993L7.8125 5C6.2592 5 5 6.2592 5 7.8125V24.6875C5 26.2407 6.2592 27.5 7.8125 27.5H22.1875C23.7407 27.5 25 26.2407 25 24.6875V7.8125C25 6.2592 23.7407 5 22.1875 5L19.9827 4.9993L19.9829 5.00085ZM12.8125 8.125H17.1875C18.1625 8.125 19.0218 7.62884 19.5263 6.8752L22.1875 6.875C22.7052 6.875 23.125 7.29474 23.125 7.8125V24.6875C23.125 25.2052 22.7052 25.625 22.1875 25.625H7.8125C7.29474 25.625 6.875 25.2052 6.875 24.6875V7.8125C6.875 7.29474 7.29474 6.875 7.8125 6.875L10.4738 6.87525C10.9783 7.62887 11.8375 8.125 12.8125 8.125ZM12.8125 4.375H17.1875C17.7052 4.375 18.125 4.79474 18.125 5.3125C18.125 5.83026 17.7052 6.25 17.1875 6.25H12.8125C12.2947 6.25 11.875 5.83026 11.875 5.3125C11.875 4.79474 12.2947 4.375 12.8125 4.375Z" fill="white" fill-opacity="0.5"/>
                            </svg>''',
                        semanticsLabel: "Presence icon",
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Presensi(),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: SvgPicture.string(
                        '''<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none">
                            <path d="M4.375 16.25C4.375 10.382 9.13198 5.625 15 5.625C20.2478 5.625 24.607 9.4295 25.4699 14.4307C26.5044 15.0889 27.2437 16.1694 27.445 17.4296C27.4814 17.0412 27.5 16.6477 27.5 16.25C27.5 9.34644 21.9035 3.75 15 3.75C8.09644 3.75 2.5 9.34644 2.5 16.25C2.5 19.6976 3.89694 22.8206 6.15342 25.0811C6.51922 25.4475 7.11281 25.448 7.47925 25.0822C7.84569 24.7165 7.8462 24.1229 7.4804 23.7564C5.56051 21.8331 4.375 19.1809 4.375 16.25ZM22.7385 13.7669C21.6892 10.494 18.6213 8.125 15 8.125C10.5127 8.125 6.875 11.7627 6.875 16.25C6.875 18.4947 7.78659 20.5285 9.25751 21.998C9.62381 22.364 10.2174 22.3636 10.5833 21.9974C10.9493 21.6311 10.949 21.0375 10.5827 20.6715C9.4494 19.5394 8.75 17.9773 8.75 16.25C8.75 12.7983 11.5482 10 15 10C17.7814 10 20.1385 11.8169 20.9491 14.3286C21.4846 14.021 22.0914 13.8235 22.7385 13.7669ZM11.875 16.25C11.875 14.5241 13.2741 13.125 15 13.125C16.7259 13.125 18.125 14.5241 18.125 16.25C18.125 17.9759 16.7259 19.375 15 19.375C13.2741 19.375 11.875 17.9759 11.875 16.25ZM15 15C14.3096 15 13.75 15.5596 13.75 16.25C13.75 16.9404 14.3096 17.5 15 17.5C15.6904 17.5 16.25 16.9404 16.25 16.25C16.25 15.5596 15.6904 15 15 15ZM26.25 18.125C26.25 19.8509 24.8509 21.25 23.125 21.25C21.3991 21.25 20 19.8509 20 18.125C20 16.3991 21.3991 15 23.125 15C24.8509 15 26.25 16.3991 26.25 18.125ZM28.75 24.8438C28.75 26.7894 27.1429 28.75 23.125 28.75C19.1071 28.75 17.5 26.7967 17.5 24.8438V24.715C17.5 23.4911 18.4921 22.5 19.7159 22.5H26.5341C27.7579 22.5 28.75 23.4912 28.75 24.715V24.8438Z" fill="white" fill-opacity="0.5"/>
                          </svg>''',
                        semanticsLabel: "Reschadule Icon",
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReSchadule(),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: SvgPicture.string(
                        '''<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none">
                              <path d="M21.25 16.875C21.25 15.8395 20.4105 15 19.375 15H10.625C9.58946 15 8.75 15.8395 8.75 16.875V17.5C8.75 19.9643 11.0744 22.5 15 22.5C18.9256 22.5 21.25 19.9643 21.25 17.5V16.875ZM18.4375 10.3125C18.4375 8.41402 16.8985 6.875 15 6.875C13.1015 6.875 11.5625 8.41402 11.5625 10.3125C11.5625 12.211 13.1015 13.75 15 13.75C16.8985 13.75 18.4375 12.211 18.4375 10.3125ZM27.5 15C27.5 21.9035 21.9035 27.5 15 27.5C8.09644 27.5 2.5 21.9035 2.5 15C2.5 8.09644 8.09644 2.5 15 2.5C21.9035 2.5 27.5 8.09644 27.5 15ZM25.625 15C25.625 9.13198 20.868 4.375 15 4.375C9.13198 4.375 4.375 9.13198 4.375 15C4.375 20.868 9.13198 25.625 15 25.625C20.868 25.625 25.625 20.868 25.625 15Z" fill="white" fill-opacity="0.5"/>
                            </svg>''',
                        semanticsLabel: "Profile icon",
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Profile(),
                          ),
                        );
                      },
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
