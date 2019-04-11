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
      // appBar: AppBar(
      //   title: Text('Laporan Absen',style: TextStyle(fontFamily: Configs.defaultFont)),
      //   elevation: 1.5,
      // ),
      body: Container(
        child: Column(
          children: <Widget>[
            new Container(
              width: queryData.size.width,
              height: 230,
              margin: EdgeInsets.only(bottom: 5),
              child: Stack(
                children: <Widget>[
                  new DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: new BoxDecoration(
                      color: Colors.blue.withOpacity(0.6),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.35, 0.5],
                        colors: [
                          Colors.blue,
                          Colors.blue[200]
                        ]
                      )
                    ),
                    child: new Image.asset(
                      'assets/images/backgroundabsen.jpg',
                      fit: BoxFit.cover,
                      height: 230,
                      width: queryData.size.width,
                    ),
                  ),

                  new AppBar(
                    title: Text('Laporan Absen'),
                    backgroundColor: Colors.transparent,
                  ),

                  new Positioned.fill(
                    top: 100,
                    bottom: 20,
                    left: 10.0,
                    right: 10.0,
                    child: new Container(
                      width: queryData.size.width,
                      height: queryData.size.height,
                      child: Row(
                        children: <Widget>[
                          new Expanded(
                            flex: 1,
                            child: Card(
                              elevation: 10.0,
                              margin: EdgeInsets.symmetric(
                                horizontal: 15
                              ),
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
                              elevation: 10.0,
                              margin: EdgeInsets.symmetric(
                                horizontal: 15
                              ),
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
                            flex: 1,
                            child: Card(
                              elevation: 10.0,
                              margin: EdgeInsets.symmetric(
                                horizontal: 15
                              ),
                              child: Column(
                                children: <Widget>[
                                  new Container(
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Center(
                                        child: Text('Alpa',style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 12.5),),
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
                                        child: Text('203',style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 18)),
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
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
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