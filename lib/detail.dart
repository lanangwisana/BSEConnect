import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:tubes_flutter/detail_presensi.dart';
import 'package:tubes_flutter/edit_presensi.dart';

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

  Future _hapus(String id) async {
    try {
      final respon = await http.post(
          Uri.parse('http://192.168.56.1/API_Presensi/delete.php'),
          body: {
            'id': id,
          });
      if (respon.statusCode == 200) {
        return true;
      } else {
        return false;
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
          backgroundColor: Color.fromARGB(255, 11, 96, 176),
        ),
        body: _loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: _listdata.length,
                itemBuilder: ((context, index) {
                  return Card(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPresensi(
                              ListData: {
                                'id': _listdata[index]['id'],
                                'nama': _listdata[index]['nama'],
                                'subject': _listdata[index]['subject'],
                                'date': _listdata[index]['date'],
                                'topic': _listdata[index]['topic'],
                                'grade': _listdata[index]['grade'],
                              },
                            ),
                          ),
                        );
                      },
                      child: ListTile(
                          title: Text(_listdata[index]['name']),
                          subtitle: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(_listdata[index]['subject']),
                              Text(_listdata[index]['date']),
                            ],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UbahPresensi(
                                          ListData: {
                                            'id': _listdata[index]['id'],
                                            'nama': _listdata[index]['nama'],
                                            'subject': _listdata[index]
                                                ['subject'],
                                            'date': _listdata[index]['date'],
                                            'topic': _listdata[index]['topic'],
                                            'grade': _listdata[index]['grade'],
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                  icon: Icon(Icons.edit)),
                              IconButton(
                                  onPressed: () {
                                    showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: ((context) {
                                          return AlertDialog(
                                            content: Text('Yakin hapus data ?'),
                                            actions: [
                                              ElevatedButton(
                                                  onPressed: () {
                                                    _hapus(_listdata[index]
                                                            ['id'])
                                                        .then((value) => {
                                                              Navigator.pushAndRemoveUntil(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          ((context) =>
                                                                              HalamanPresensi())),
                                                                  (route) =>
                                                                      false)
                                                            });
                                                  },
                                                  child: Text('Hapus')),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text("Batal"),
                                              )
                                            ],
                                          );
                                        }));
                                  },
                                  icon: Icon(Icons.delete))
                            ],
                          )),
                    ),
                  );
                }),
              ));
  }
}
