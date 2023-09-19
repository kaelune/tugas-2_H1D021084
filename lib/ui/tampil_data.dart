import 'package:flutter/material.dart';
import 'package:tugas_2/ui/form_data.dart';

class TampilData extends StatelessWidget { //contoh data yang di-passing

  const TampilData({Key? key, required int this.tahunLahir, required String this.nim, required String this.nama}) : super(key: key);
  final String nama;
  final String nim;
  final int tahunLahir;
  @override
  Widget build(BuildContext context) {
    var usia = DateTime.now().year-tahunLahir;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Nama saya $nama, dengan NIM $nim dan berusia $usia"),
          ],
        ),
      )
    );
  }
}
