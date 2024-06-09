import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class DetailPresensi extends StatefulWidget {
  final Map ListData;
  DetailPresensi({Key? key, required this.ListData}) : super(key: key);
  // const DetailPresensi({super.key});

  @override
  State<DetailPresensi> createState() => _DetailPresensiState();
}

class _DetailPresensiState extends State<DetailPresensi> {
  final formKey = GlobalKey<FormState>();
  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController topic = TextEditingController();
  TextEditingController grade = TextEditingController();
  @override
  Widget build(BuildContext context) {
    id.text = widget.ListData['id'];
    name.text = widget.ListData['name'];
    subject.text = widget.ListData['subject'];
    date.text = widget.ListData['date'];
    topic.text = widget.ListData['topic'];
    grade.text = widget.ListData['grade'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Presensi'),
        backgroundColor:const Color.fromARGB(255, 11, 96, 176),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              elevation: 12.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      title: const Text('Teacher ID'),
                      subtitle: Text(widget.ListData['id']),
                    ),
                    ListTile(
                      title: const Text('Nama'),
                      subtitle: Text(widget.ListData['name']),
                    ),
                    ListTile(
                      title: const Text('Subject'),
                      subtitle: Text(widget.ListData['subject']),
                    ),
                    ListTile(
                      title: const Text('Date'),
                      subtitle: Text(widget.ListData['date']),
                    ),
                    ListTile(
                      title: const Text('Topic'),
                      subtitle: Text(widget.ListData['topic']),
                    ),
                    ListTile(
                      title: const Text('Grade'),
                      subtitle: Text(widget.ListData['grade']),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
