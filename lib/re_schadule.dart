// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:http/http.dart' as http; // Import http package
import 'dart:convert'; // Import json encoder/decoder
import 'package:path_provider/path_provider.dart';
import 'package:tubes_flutter/home.dart';
import 'package:tubes_flutter/presensi.dart';
import 'package:tubes_flutter/profile.dart';

List<String> myItems = ['X', 'XI A', 'XI B', 'XII'];

class Reschedule extends StatefulWidget {
  const Reschedule({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RescheduleState createState() => _RescheduleState();
}

class _RescheduleState extends State<Reschedule> {
  String? selectedGrade; // Menyimpan nilai dropdown yang dipilih
  DateTime? selectedDate; // Menyimpan nilai tanggal yang dipilih
  TextEditingController nameController =
      TextEditingController(); // Controller for Name input
  TextEditingController subjectController =
      TextEditingController(); // Controller for Subject input
  TextEditingController topicController =
      TextEditingController(); // Controller for Topic input

  // Function to handle form submission and send data via HTTP
  void submitData() async {
    if (nameController.text.isEmpty ||
        subjectController.text.isEmpty ||
        selectedDate == null ||
        selectedGrade == null ||
        topicController.text.isEmpty) {
      // Show error message if any field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: 'Submission Failed!',
            message: 'Please fill in all the fields.',
            contentType: ContentType.failure,
            color: const Color(0xFF0B60B0),
          ),
        ),
      );
      return;
    }

    // Create data map
    Map<String, dynamic> data = {
      'name': nameController.text,
      'subject': subjectController.text,
      'date':
          "${selectedDate!.year}-${selectedDate!.month}-${selectedDate!.day}",
      'grade': selectedGrade,
      'topic': topicController.text,
    };

    // Encode data to JSON format
    String jsonData = jsonEncode(data);

    // Write data to JSON file
    try {
      await saveDataToFile(jsonData);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: 'Submission Successful!',
            message: 'Your data has been submitted.',
            contentType: ContentType.success,
            color: const Color(0xFF0B60B0),
          ),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to submit data: $e'),
        ),
      );
    }

    // Reset the values of controllers
    nameController.clear();
    subjectController.clear();
    topicController.clear();
    setState(() {
      selectedDate = null;
      selectedGrade = null;
    });
  }

  // Function to save data to JSON file
  Future<void> saveDataToFile(String jsonData) async {
    // Define file path
    String filePath = 'userdata.json';

    // Write data to file
    try {
      await http.post(Uri.parse('https://example.com/save'), body: {
        'data': jsonData,
        'filePath': filePath,
      });

      // Optionally, you can also write data directly to local file system
      // File file = File(filePath);
      // await file.writeAsString(jsonData);
    } catch (e) {
      throw Exception('Failed to save data to file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 394,
              height: 600,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 11, 96, 176),
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(50.0),
                  bottomEnd: Radius.circular(50.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsetsDirectional.only(top: 50.0),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Re Schedule",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(
                        start: 36.0, end: 36.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          child: Container(
                            width: 400,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: TextField(
                              controller: nameController,
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
                        start: 36.0, end: 36.0, top: 7.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Subject",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          child: Container(
                            width: 400,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: TextField(
                              controller: subjectController,
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
                        start: 36.0, end: 36.0, top: 7.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Date",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 400,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2040),
                              ).then(
                                (value) {
                                  if (value != null) {
                                    setState(() {
                                      selectedDate = value;
                                    });
                                  }
                                },
                              );
                            },
                            child: Text(
                              selectedDate != null
                                  ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                                  : "Select Date",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(
                        start: 36.0, end: 36.0, top: 7.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Topic",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600),
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
                              controller: topicController,
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
                  Stack(
                    children: [
                      Positioned(
                        //Atur posisi optional disini
                        child: Container(
                          padding: const EdgeInsetsDirectional.only(
                              start: 36.0, end: 36.0, top: 7.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                "Grade",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                child: Container(
                                  width: 400,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: DropdownButtonFormField<String>(
                                    value: selectedGrade,
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedGrade = newValue;
                                      });
                                    },
                                    items: myItems.map((String item) {
                                      return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(item),
                                      );
                                    }).toList(),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Square corners
                                        borderSide: const BorderSide(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed:
                        submitData, // Call the submit function when pressed
                    child: Text("Submit"),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.0,
              margin: const EdgeInsetsDirectional.only(top: 103.2),
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
                            <path d="M13.1869 3.16486C14.2343 2.28163 15.7657 2.28163 16.8131 3.16487L25.2506 10.28C25.8843 10.8144 26.25 11.6011 26.25 12.4301V24.0674C26.25 25.2755 25.2706 26.2549 24.0625 26.2549H19.6875C18.4794 26.2549 17.5 25.2755 17.5 24.0674V17.8085C17.5 17.636 17.3601 17.496 17.1875 17.496H12.8125C12.6399 17.496 12.5 17.636 12.5 17.8085V24.0674C12.5 25.2755 11.5206 26.2549 10.3125 26.2549H5.9375C4.72938 26.2549 3.75 25.2755 3.75 24.0674V12.4301C3.75 11.6011 4.11569 10.8144 4.7494 10.28L13.1869 3.16486ZM15.6044 4.59825C15.2552 4.30383 14.7448 4.30383 14.3956 4.59825L5.95814 11.7134C5.7469 11.8915 5.625 12.1538 5.625 12.4301V24.0674C5.625 24.24 5.76491 24.3799 5.9375 24.3799H10.3125C10.4851 24.3799 10.625 24.24 10.625 24.0674V17.8085C10.625 16.6004 11.6044 15.621 12.8125 15.621H17.1875C18.3956 15.621 19.375 16.6004 19.375 17.8085V24.0674C19.375 24.24 19.5149 24.3799 19.6875 24.3799H24.0625C24.2351 24.3799 24.375 24.24 24.375 24.0674V12.4301C24.375 12.1538 24.2531 11.8915 24.0419 11.7134L15.6044 4.59825Z" fill="white" fill-opacity="0.5"/>
                          </svg>''',
                        semanticsLabel: "Home icon",
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const HomePage(), // Replace with your target page
                          ),
                        );
                      },
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
                            <path d="M4.375 16.25C4.375 10.382 9.13198 5.625 15 5.625C20.2478 5.625 24.607 9.4295 25.4699 14.4307C26.5044 15.0889 27.2437 16.1694 27.445 17.4296C27.4814 17.0412 27.5 16.6477 27.5 16.25C27.5 9.34644 21.9035 3.75 15 3.75C8.09644 3.75 2.5 9.34644 2.5 16.25C2.5 19.6976 3.89694 22.8206 6.15342 25.0811C6.51922 25.4475 7.11281 25.448 7.47925 25.0822C7.84569 24.7165 7.8462 24.1229 7.4804 23.7564C5.56051 21.8331 4.375 19.1809 4.375 16.25ZM22.7385 13.7669C21.6892 10.494 18.6213 8.125 15 8.125C10.5127 8.125 6.875 11.7627 6.875 16.25C6.875 18.4947 7.78659 20.5285 9.25751 21.998C9.62381 22.364 10.2174 22.3636 10.5833 21.9974C10.9493 21.6311 10.949 21.0375 10.5827 20.6715C9.4494 19.5394 8.75 17.9773 8.75 16.25C8.75 12.7983 11.5482 10 15 10C17.7814 10 20.1385 11.8169 20.9491 14.3286C21.4846 14.021 22.0914 13.8235 22.7385 13.7669ZM11.875 16.25C11.875 14.5241 13.2741 13.125 15 13.125C16.7259 13.125 18.125 14.5241 18.125 16.25C18.125 17.9759 16.7259 19.375 15 19.375C13.2741 19.375 11.875 17.9759 11.875 16.25ZM15 15C14.3096 15 13.75 15.5596 13.75 16.25C13.75 16.9404 14.3096 17.5 15 17.5C15.6904 17.5 16.25 16.9404 16.25 16.25C16.25 15.5596 15.6904 15 15 15ZM26.25 18.125C26.25 19.8509 24.8509 21.25 23.125 21.25C21.3991 21.25 20 19.8509 20 18.125C20 16.3991 21.3991 15 23.125 15C24.8509 15 26.25 16.3991 26.25 18.125ZM28.75 24.8438C28.75 26.7894 27.1429 28.75 23.125 28.75C19.1071 28.75 17.5 26.7967 17.5 24.8438V24.715C17.5 23.4911 18.4921 22.5 19.7159 22.5H26.5341C27.7579 22.5 28.75 23.4912 28.75 24.715V24.8438Z" fill="white"/>
                          </svg>''',
                        semanticsLabel: "Re-Shedule Icon",
                      ),
                      onPressed: () {},
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
