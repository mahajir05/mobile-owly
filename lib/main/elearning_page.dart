import 'package:flutter/material.dart';
import 'package:owly/elearning/materi_elearning.dart';

class Elearning extends StatefulWidget {
  @override
  _Elearning createState() => new _Elearning();
}

class _Elearning extends State<Elearning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          new AppBar(
            title: Text('E-Learning'),
          ),

          new Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              padding: EdgeInsets.only(
                top: 10
              ),
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFF0072ff),
                          Color(0xff00c6ff),
                        ],
                      )
                    ),
                    child: Row(
                      children: <Widget>[
                        new Expanded(
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                padding: EdgeInsets.only(
                                  top: 25,
                                  bottom: 10,
                                  left: 10,
                                  right: 10
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  'Pemrograman Berbasis Objek I $index',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white
                                  ),
                                ),
                              ),

                              new Container(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  bottom: 10
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  'Muhammad Ulin Nuha, Spd. $index',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white
                                  ),
                                ),
                              ),

                              new Align(
                                alignment: Alignment.centerLeft,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => MateriElearning(mataPelajaran: 'Pemrograman Berbasis Objek I $index',)
                                    ));
                                  },
                                  child: Card(
                                    margin: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 10
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30)
                                      )
                                    ),
                                    child: Container(
                                      width: 130,
                                      padding: EdgeInsets.all(10),
                                      // child: Text(
                                      //   'LIHAT',
                                      //   textAlign: TextAlign.center,
                                      // ),
                                      child: Icon(
                                        Icons.arrow_forward
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        new Container(
                          child: Opacity(
                            opacity: 0.8,
                            child: Icon(
                              Icons.book,
                              size: 90,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )

          // new AppBar(
          //   title: Text('E-Learning'),
          // ),

          // new ListView.builder(
          //   itemCount: 10,
          //   shrinkWrap: true,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: Colors.green,
          //           borderRadius: 
          //         ),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.end,
          //           children: <Widget>[
          //             new Container(
          //               width: MediaQuery.of(context).size.width,
          //               child: Padding(
          //                 padding: EdgeInsets.all(10),
          //                 child: Text(
          //                   'Nama Guru'
          //                 ),
          //               )
          //             ),
                      
          //             new Container(
          //               width: MediaQuery.of(context).size.width,
          //               child: Text('Mata Pelajaran $index'),
          //             ),

          //             // new Container(
          //             //   width: MediaQuery.of(context).size.width,
          //             //   decoration: BoxDecoration(
          //             //     borderRadius: BorderRadius.all(
          //             //       Radius.circular(10)
          //             //     )
          //             //   ),
          //             //   child: Icon(Icons.arrow_right),
          //             // )
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}