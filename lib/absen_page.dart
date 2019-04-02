import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Absen extends StatefulWidget {
  @override
  _Absen createState() => _Absen();
}

class _Absen extends State<Absen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Absen'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            new Container(
              width: queryData.size.width,
              height: 200,
              margin: EdgeInsets.only(
                top: 10,
                bottom: 20
              ),
              //color: Colors.blue[200],
              child: Row(
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        children: <Widget>[
                          new Container(
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Center(
                                child: Text('IZIN'),
                              ),
                            ),
                          ),

                          new Container(
                            height: 3,
                            width: queryData.size.width,
                            color: Colors.black26,
                          ),

                          new Expanded(
                            child: Container(
                              child: Center(
                                child: Text('1'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  new Expanded(
                    flex: 1,
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        children: <Widget>[
                          new Container(
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Center(
                                child: Text('SAKIT'),
                              ),
                            ),
                          ),

                          new Container(
                            height: 3,
                            width: queryData.size.width,
                            color: Colors.black26,
                          ),

                          new Expanded(
                            child: Container(
                              child: Center(
                                child: Text('1'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  new Expanded(
                    flex: 1,
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        children: <Widget>[
                          new Container(
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Center(
                                child: Text('ALPA'),
                              ),
                            ),
                          ),

                          new Container(
                            height: 3,
                            width: queryData.size.width,
                            color: Colors.black26,
                          ),

                          new Expanded(
                            child: Container(
                              child: Center(
                                child: Text('0'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            new Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 30,
                itemBuilder: (context, index) {
                  var hariIni = new DateTime.now();
                  var tanggal = new DateTime(hariIni.year, hariIni.month, hariIni.day - index,);
                  var dateFormat = new DateFormat('EEEE, dd-MMMM-yyyy').format(tanggal);
                  
                  return Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index1) {
                        return Card(
                          child: Container(
                            child: ListTile(
                            title: Text('$dateFormat'),
                            subtitle: Text('Matematika $index1'),
                            trailing: Text(
                              'Hadir',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )
    );
  }
}