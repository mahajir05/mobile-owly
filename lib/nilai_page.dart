import 'package:flutter/material.dart';
import 'package:owly/nilai/mata_pelajaran.dart';
import 'package:owly/nilai/rankings.dart';
import 'package:owly/nilai/tugas_dan_uh.dart';
import 'package:owly/nilai/uts_dan_uas.dart';

class Nilai extends StatefulWidget {
  @override
  _Nilai createState() => new _Nilai();
}

class _Nilai extends State<Nilai> {

  final List<String> _items = ['Kelas X Semester 1', 'Kelas X Semester 2', 'Kelas XI Semester 1', 'Kelas XI Semester 2', 'Kelas XII Semester 1', 'Kelas XII Semester 2'].toList();
  String _selection;

  @override
  void initState() {
    super.initState();
    _selection = _items.first;
  }

  @override
  Widget build(BuildContext context) {

    final dropdownMenuOptions = _items
      .map((String item) =>
        new DropdownMenuItem<String>(value: item, child: new Text(item))
      )
      .toList();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Transkip Nilai"),
          actions: <Widget>[
            new IconButton(
              icon: new Image.asset(
                'assets/icons/ranking.png', 
                color: Colors.white,
                height: 24,
                width: 24,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Rankings()
                ));
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(250),
            child: Column(
              children: <Widget>[
                new Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.grey[100],
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/images/grade.png',
                    ),
                  ),
                ),

                new Container(
                  //color: Colors.grey[100],
                  child: new TabBar(
                    indicator: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10), 
                        topRight: Radius.circular(10)
                      )
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    tabs: <Widget>[
                      new Tab(
                        child: Text('Kategori Nilai'),
                      ),

                      new Tab(
                        child: Text('Mata Pelajaran'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        body: TabBarView(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 10),
              child: new ListView.builder(
                itemBuilder: (BuildContext context, int index1) {
                  String kategori;
                  Widget page;

                  if (index1 == 0) {
                    kategori = 'Tugas';
                    page = TugasDanUH(tittle: kategori,);
                  } else if (index1 == 1) {
                    kategori = 'Ulangan Harian';
                    page = TugasDanUH(tittle: kategori,);
                  } else if (index1 == 2) {
                    kategori = 'Ujian Tengah Semester';
                    page = UtsDanUas(tittle: kategori,);
                  } else if (index1 == 3) {
                    kategori = 'Ujian Akhir Semester';
                    page = UtsDanUas(tittle: kategori,);
                  }

                  return new KategoriWidget(title: kategori, page: page,);
                },
                itemCount: 4,
              ),
            ),

            new Container(
              margin: EdgeInsets.only(top: 10),
              child: new ListView.builder(
                itemBuilder: (BuildContext context, int index2) {

                  return new KategoriWidget(
                    title: 'Mata Pelajaran $index2', 
                    page: NilaiPerMataPelajaran(),
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

}



class KategoriWidget extends StatefulWidget {
  final String title;
  final Widget page;

  const KategoriWidget({Key key, this.title, this.page}) : super(key: key);

  @override
  _KategoriWidgetState createState() => new _KategoriWidgetState();
}

class _KategoriWidgetState extends State<KategoriWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      elevation: 4.0,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => widget.page
          ));
        },
        child: ListTile(
          title: Text(
            widget.title,
            style: TextStyle(
              //color: Colors.indigo[900],
              //fontWeight: FontWeight.bold,
              //fontSize: 18
            ),
          ),
          subtitle: Column(
            children: <Widget>[
              new Text(' ')
            ],
          ),
          trailing: Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}