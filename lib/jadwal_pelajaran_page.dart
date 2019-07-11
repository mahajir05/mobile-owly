import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:owly/class/schedule_notification.dart';
import 'package:owly/config/configs.dart';
import 'package:quiver/async.dart';

class JadwalPelajaran extends StatefulWidget {
  @override
  _JadwalPelajaran createState() => _JadwalPelajaran();
}

class _JadwalPelajaran extends State<JadwalPelajaran> with TickerProviderStateMixin {

  // notification
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  String hari;
  String _randomString(int length) {
    var rand = new Random();
    var codeUnits = new List.generate(
        length, 
        (index){
          return rand.nextInt(33)+89;
        }
    );
    
    return new String.fromCharCodes(codeUnits);
  }

  var refreshKey = GlobalKey<RefreshIndicatorState>();

  DateTime _selectedTime = DateTime(2019, 05, 03, 21, 56, 00);
  int estimateTs = DateTime(2019, 05, 03, 21, 56, 00).millisecondsSinceEpoch;
  static const _platform = const MethodChannel('schedule_notifications_app');

  Future<Null> refreshList() async {
    refreshKey.currentState?.show();
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _randomString(10);
      //showNotification();
    });

    return null;
  }

  // @override
  // void initState() {
  //   super.initState();

  //   flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
  //   var android = new AndroidInitializationSettings('ic_launcher');
  //   var iOS = new IOSInitializationSettings();
  //   var initSetting = new InitializationSettings(android, iOS);
  //   flutterLocalNotificationsPlugin.initialize(initSetting, onSelectNotification: onSelectNotification);
  // }

  // notification
  // Future onSelectNotification (String payload) async {
  //   debugPrint("payload: $payload");
  //   showDialog(context: context, builder: (_) => new AlertDialog(
  //     title: new Text("Notification"),
  //     content: new Text("$payload"),
  //   ));
  // }

  // showNotification() async{
  //   var android = new AndroidNotificationDetails("channel id", "channel NAME", "channel Description");
  //   var iOS = new IOSNotificationDetails();
  //   var platform = new NotificationDetails(android, iOS);
  //   await flutterLocalNotificationsPlugin.show(
  //     0, 
  //     "New Notification", 
  //     "Flutter Local Notification", 
  //     platform
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Jadwal Pelajaran'),
          bottom: TabBar(
            tabs: <Widget>[
              new Padding(
                padding: EdgeInsets.all(8),
                child: new Text('HARI INI'),
              ),

              new Padding(
                padding: EdgeInsets.all(8),
                child: new Text('SEMUA'),
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: <Widget>[
            new RefreshIndicator(
              onRefresh: refreshList,
              key: refreshKey,
              child: ListView(
                children: <Widget>[
                  new Container(
                    height: 50,
                    child: Center(
                      child: Text(
                        _randomString(10),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),

                  new Card(
                    elevation: 4.0,
                    child: Column(
                      children: <Widget>[
                        new Container(
                          // color: Colors.transparent,
                          width: queryData.size.width,
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                'Sedang Berlangsung',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),

                        new Container(
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15
                            ),
                            title: Text('Mata Pelajaran 1'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Padding(
                                  padding: EdgeInsets.symmetric(vertical: 3),
                                  child: new Text(
                                    'Sulistiani S.pd',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                new Text(
                                  '07:00 - 08:30',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                ),
                              ],
                            ),
                            trailing: Container(
                              // height: 50,
                              width: 90,
                              child: Center(
                                  child: Text(
                                    '(countdown)'
                                  )
                                ),
                              // child: StreamBuilder(
                              //   stream: Stream.periodic(Duration(seconds: 1), (i) => i),
                              //   builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                              //     // DateFormat format = DateFormat("mm:ss");
                              //     // int now = DateTime
                              //     //     .now()
                              //     //     .millisecondsSinceEpoch;
                              //     // Duration remaining = Duration(milliseconds: estimateTs - now);
                              //     // var dateString = '${remaining.inHours}:${format.format(
                              //     //     DateTime.fromMillisecondsSinceEpoch(remaining.inMilliseconds))}';
                              //     // //print(dateString);
                              //     return Container(
                              //       //color: Colors.greenAccent.withOpacity(0.3),
                              //       alignment: Alignment.center,
                              //       //child: Text(dateString),
                              //       child: Text("(countdown)"),
                              //     );
                              //   }
                              // ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  new Card(
                    elevation: 4.0,
                    child: Column(
                      children: <Widget>[
                        new Container(
                          // color: Colors.transparent,
                          width: queryData.size.width,
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                'Selanjutnya',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),

                        new Container(
                          child: ListTile(
                            title: Text('Mata Pelajaran 2'),
                            subtitle: Text('Herlawati S.pd', style: TextStyle(fontSize: 12),),
                            trailing: Text('08:30 - 09:15'),
                          ),
                        )
                      ],
                    ),
                  ),

                  new Container(
                    child: Card(
                      elevation: 4.0,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20,
                        right: 20,
                        bottom: 5
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Container(
                            width: queryData.size.width,
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5)
                              )
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  'Jadwal Pelajaran',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),

                          new Container(
                            child: new ListView.builder(
                              itemCount: 5,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                int no = index+1;

                                return new Container(
                                  child: ListTile(
                                    title: Text('Mata Pelajaran $no'),
                                    //subtitle: Text('8:30:00 - 09:15'),
                                    trailing: Text('(Nama Guru)'),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),

              // child: SingleChildScrollView(
              //   physics: AlwaysScrollableScrollPhysics(),
              //   child: Container(
              //     height: queryData.size.height,
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.stretch,
              //       mainAxisSize: MainAxisSize.min,
              //       children: <Widget>[
              //         new Container(
              //           height: 50,
              //           child: Center(
              //             child: Text(
              //               _randomString(10),
              //               style: TextStyle(
              //                 fontSize: 14,
              //                 fontWeight: FontWeight.bold
              //               ),
              //             ),
              //           ),
              //         ),

              //         new Card(
              //           elevation: 4.0,
              //           child: Column(
              //             children: <Widget>[
              //               new Container(
              //                 // color: Colors.transparent,
              //                 width: queryData.size.width,
              //                 margin: EdgeInsets.all(1),
              //                 decoration: BoxDecoration(
              //                   color: Colors.blue,
              //                   borderRadius: BorderRadius.only(
              //                     topLeft: Radius.circular(5),
              //                     topRight: Radius.circular(5)
              //                   )
              //                 ),
              //                 child: Padding(
              //                   padding: EdgeInsets.all(10),
              //                   child: Center(
              //                     child: Text(
              //                       'Sedang Berlangsung',
              //                       style: TextStyle(color: Colors.white),
              //                     ),
              //                   ),
              //                 ),
              //               ),

              //               new Container(
              //                 height: 70,
              //                 child: ListTile(
              //                   title: Text('Mata Pelajaran 1'),
              //                   subtitle: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: <Widget>[
              //                       new Padding(
              //                         padding: EdgeInsets.symmetric(vertical: 3),
              //                         child: new Text(
              //                           'Sulistiani S.pd',
              //                           style: TextStyle(
              //                             fontSize: 12,
              //                             fontWeight: FontWeight.bold,
              //                           ),
              //                         ),
              //                       ),

              //                       new Text(
              //                         '07:00 - 08:30',
              //                         style: TextStyle(
              //                           fontSize: 12
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                   trailing: Text('(Countdown)'),
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),

              //         new Card(
              //           elevation: 4.0,
              //           child: Column(
              //             children: <Widget>[
              //               new Container(
              //                 // color: Colors.transparent,
              //                 width: queryData.size.width,
              //                 margin: EdgeInsets.all(1),
              //                 decoration: BoxDecoration(
              //                   color: Colors.blue,
              //                   borderRadius: BorderRadius.only(
              //                     topLeft: Radius.circular(5),
              //                     topRight: Radius.circular(5)
              //                   )
              //                 ),
              //                 child: Padding(
              //                   padding: EdgeInsets.all(10),
              //                   child: Center(
              //                     child: Text(
              //                       'Selanjutnya',
              //                       style: TextStyle(color: Colors.white),
              //                     ),
              //                   ),
              //                 ),
              //               ),

              //               new Container(
              //                 child: ListTile(
              //                   title: Text('Mata Pelajaran 2'),
              //                   subtitle: Text('Herlawati S.pd', style: TextStyle(fontSize: 12),),
              //                   trailing: Text('08:30 - 09:15'),
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),

              //         new Expanded(
              //           child: Card(
              //             elevation: 4.0,
              //             margin: EdgeInsets.only(
              //               top: 10,
              //               left: 20,
              //               right: 20,
              //               bottom: 5
              //             ),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.stretch,
              //               mainAxisSize: MainAxisSize.min,
              //               children: <Widget>[
              //                 new Container(
              //                   width: queryData.size.width,
              //                   margin: EdgeInsets.all(1),
              //                   decoration: BoxDecoration(
              //                     color: Colors.blue,
              //                     borderRadius: BorderRadius.only(
              //                       topLeft: Radius.circular(5),
              //                       topRight: Radius.circular(5)
              //                     )
              //                   ),
              //                   child: Padding(
              //                     padding: EdgeInsets.all(10),
              //                     child: Center(
              //                       child: Text(
              //                         'Jadwal Pelajaran',
              //                         style: TextStyle(color: Colors.white),
              //                       ),
              //                     ),
              //                   ),
              //                 ),

              //                 new Expanded(
              //                   child: new Container(
              //                     height: queryData.size.height,
              //                     child: new ListView.builder(
              //                       itemCount: 5,
              //                       shrinkWrap: true,
              //                       physics: NeverScrollableScrollPhysics(),
              //                       itemBuilder: (context, index) {
              //                         int no = index+1;

              //                         return new Container(
              //                           child: ListTile(
              //                             title: Text('Mata Pelajaran $no'),
              //                             //subtitle: Text('8:30:00 - 09:15'),
              //                             trailing: Text('(Nama Guru)'),
              //                           ),
              //                         );
              //                       },
              //                     ),
              //                   )
              //                 )
              //               ],
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
            ),

            // Tab Semua
            new Container(
              child: new ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  String hari;

                  if (index == 0) {
                    hari = 'Senin';
                  }
                  else if (index == 1) {
                    hari = 'Selasa';
                  }
                  else if (index == 2) {
                    hari = 'Rabu';
                  }
                  else if (index == 3) {
                    hari = 'Kamis';
                  }
                  else if (index == 4) {
                    hari = 'Jumat';
                  }
                  else if (index == 5) {
                    hari = 'Sabtu';
                  }

                  return new Container(
                    child: Card(
                      elevation: 4.0,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20,
                        right: 20,
                        bottom: 5
                      ),
                      child: Column(
                        children: <Widget>[
                          new Container(
                            width: queryData.size.width,
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5)
                              )
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  '$hari',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),

                          new Container(
                            child: new ListView.builder(
                              itemCount: 5,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index1) {
                                int no = index1+1;

                                return new Container(
                                  child: ListTile(
                                    title: Text('Mata Pelajaran $no'),
                                    //subtitle: Text('8:30:00 - 09:15'),
                                    trailing: Text('(Nama Guru)'),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }


  // Future<dynamic> _getIconResourceId() async {
  //   int iconResourceId;
  //   try {
  //     iconResourceId = await _platform.invokeMethod('getIconResourceId');
  //   } on PlatformException catch (e) {
  //     print("Error on get icon resource id: x");
  //   }

  //   setState(() {
  //     ScheduleNotifications.setNotificationIcon(iconResourceId);
  //   });
  // }

  // void _scheduleAlarm() {
  //   try {
  //     ScheduleNotifications.schedule("Text", _selectedTime, []);
  //   } on Exception {
  //     print("Whooops :x");
  //   }
  // }

  // void _unscheduleAlarm() {
  //   try {
  //     ScheduleNotifications.unschedule();
  //   } on Exception {
  //     print("Whooops :x");
  //   }
  // }
}