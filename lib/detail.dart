import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class HalamanPresensi extends StatefulWidget {
  const HalamanPresensi({super.key});

  @override
  State<HalamanPresensi> createState() => _HalamanPresensiState();
}

class _HalamanPresensiState extends State<HalamanPresensi> {
  List _listdata = [];
  bool _loading = true;

  Future _getdata() async {
    try {
      final respon = await http
          .get(Uri.parse('http://192.168.56.1/API_Presensi/read.php'));
      if (respon.statusCode == 200) {
        final data = jsonDecode(respon.body);
        setState(() {
          _listdata = data;
          _loading = false;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  void initState() {
    _getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Presensi'),
          backgroundColor: Colors.blue,
        ),
        body: _loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: _listdata.length,
                itemBuilder: ((context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(_listdata[index]['name']),
                      subtitle: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(_listdata[index]['subject']),
                          Text(_listdata[index]['date'])
                        ],
                      ),
                    ),
                  );
                }),
              ));
  }
}
