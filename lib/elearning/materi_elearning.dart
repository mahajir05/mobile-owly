import 'package:flutter/material.dart';
import 'package:owly/config/running_text.dart';

class MateriElearning extends StatefulWidget {
  final String mataPelajaran;

  const MateriElearning({Key key, this.mataPelajaran}) : super(key: key);

  @override
  _MateriElearning createState() => new _MateriElearning();
}

class _MateriElearning extends State<MateriElearning> {

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: <Widget>[
        new Container(
          // color: Colors.blue,
          // height: 200,
          child: Stack(
            children: <Widget>[
              new AppBar(
                title: MarqueeWidget(
                  child: Text(widget.mataPelajaran),
                ),
              ),

              // new Positioned(
              //   top: 80,
              //   left: 10,
              //   right: 10,
              //   bottom: 10,
              //   child: Card(
              //     child: ListTile(
              //       title: Padding(
              //         padding: EdgeInsets.only(
              //           top: 5,
              //           bottom: 10
              //         ),
              //         child: Text(
              //           'Pemrograman Berbasis Objek III',
              //           style: TextStyle(
              //             fontSize: 22
              //           ),
              //         ),
              //       ),
              //       subtitle: Text(
              //         'Muhammad Ulin Nuha, Spd.',
              //         style: TextStyle(
              //           fontSize: 16
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),

        new Expanded(
          child: Container(
            color: Colors.white,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
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
                                  top: 10,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
  
}