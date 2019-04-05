import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:owly/config/configs.dart';

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
        title: Text('Laporan Absen',style: TextStyle(fontFamily: Configs.defaultFont)),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            new Container(
              width: queryData.size.width,
              height: 130,
              margin: EdgeInsets.only(
                top: 10
              ),
              //color: Colors.blue[200],
              child: Row(
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          new Container(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text('Izin',style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 12.5),),
                              ),
                            ),
                          ),

                          new Container(
                            height: 2,
                            width: queryData.size.width,
                            color: Colors.black26,
                          ),

                          new Expanded(
                            child: Container(
                              child: Center(
                                child: Text('102',style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 18)),
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
                      child: Column(
                        children: <Widget>[
                          new Container(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text('Sakit',style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 12.5),),
                              ),
                            ),
                          ),

                          new Container(
                            height: 2,
                            width: queryData.size.width,
                            color: Colors.black26,
                          ),

                          new Expanded(
                            child: Container(
                              child: Center(
                                child: Text('512',style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 18)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  new Expanded(
                    flex: 2,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          new Container(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text('Tanpa Keterangan',style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 12.5),),
                              ),
                            ),
                          ),

                          new Container(
                            height: 2,
                            width: queryData.size.width,
                            color: Colors.black26,
                          ),

                          new Expanded(
                            child: Container(
                              child: Center(
                                child: Text('1256',style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 18)),
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
                  var dateFormat = new DateFormat('dd MMMM yyyy').format(tanggal);
                  
                  return Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index1) {
                        return Card(
                          child: Container(
                            child: ListTile(
                            title: Text('Matematika $index1',style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 16)),
                            subtitle: Text('$dateFormat',style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 12)),
                            trailing: Text(
                              'Hadir',
                              style: TextStyle(
                                fontFamily: Configs.defaultFont,
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