import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxNama(),
            _textboxNIM(),
            _textboxTahunLahir(),
            _tombolSimpan()
          ],
        ),
      )
    );
  }

  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _nimController,
    );
  }

  _textboxTahunLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahu_textboxtahunLahir"),
      controller: _tahunLahirController,
    );
  }


  _tombolSimpan(){
    return ElevatedButton(
      onPressed: (){
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahunLahir = int.parse(_tahunLahirController.text);
        Navigator.of(context as BuildContext).push(MaterialPageRoute(
          builder: (context) => TampilData(
            nama: nama,
            nim: nim,
            tahunLahir: tahunLahir,
          )
        ));
      },
      
    child: const Text('Simpan Data'),);
  }
}