import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:owly/nilai/mata_pelajaran_table.dart';

class NilaiPerMataPelajaran extends StatefulWidget {
  @override
  _NilaiPerMataPelajaran createState() => new _NilaiPerMataPelajaran();
}

class _NilaiPerMataPelajaran extends State<NilaiPerMataPelajaran> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  dispose(){
    SystemChrome.setPreferredOrientations([
      // DeviceOrientation.landscapeRight,
      // DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Mata Pelajaran 1'),
      ),

      body: new Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            new Container(
              width: 200,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  new Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border(
                        top: BorderSide(width: 2),
                        right: BorderSide(width: 2),
                        bottom: BorderSide(width: 2),
                        left: BorderSide(width: 2)
                      )
                    ),
                    child: Center(
                      child: Text('Kategori Nilai', style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),

                  new Expanded(
                    child: new ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        String kategori;

                        if (index == 0) {
                          kategori = 'Tugas';
                        } else if (index == 1) {
                          kategori = 'Ulangan Harian';
                        } else if (index == 2) {
                          kategori = 'Ujian Tengah Semester';
                        } else if (index == 3) {
                          kategori = 'Ujian Akhir Semester';
                        }
                        return new Container(
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(),
                              bottom: BorderSide(),
                              left: BorderSide()
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('$kategori'),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ),

            new Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    new Container(
                      width: 750,
                      child: Row(
                        children: <Widget>[
                          new MataPelajaranTable(
                            kelas: 'Kelas X',
                            warnaBackground1: Colors.yellow[200],
                            warnaBackground2: Colors.yellow[50],
                            warnaBackground3: Colors.yellow[100],
                          ),

                          new MataPelajaranTable(
                            kelas: 'Kelas XI',
                            warnaBackground1: Colors.green[200],
                            warnaBackground2: Colors.green[50],
                            warnaBackground3: Colors.green[100],
                          ),

                          new MataPelajaranTable(
                            kelas: 'Kelas XII',
                            warnaBackground1: Colors.blue[200],
                            warnaBackground2: Colors.blue[50],
                            warnaBackground3: Colors.blue[100],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}