import 'package:flutter/material.dart';
import 'package:owly/berita/berita_page.dart';
import 'package:owly/main/beranda_page.dart';
import 'package:owly/config/configs.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems1 = [
    new DrawerItem("Beranda", Icons.home),
    new DrawerItem("Berita", Icons.assignment),
    new DrawerItem("Profil Sekolah", Icons.account_balance),
    new DrawerItem("E-Learning", Icons.book),
    new DrawerItem("Pembayaran", Icons.payment)
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  //FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Home();
      case 1:
        return new Berita();
      case 2:
        return new Berita();
      // case 3:
      //   return new Elearning();
      // case 4:
      //   return new PembayaranHome();
      default:
        return new Text("Error");
    }
  }
  
  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions1 = new ListView.builder(
      itemCount: widget.drawerItems1.length-2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var d = widget.drawerItems1[index];
        return new ListTile(
          leading: Icon(d.icon),
          title: Text(d.title),
          selected: index == _selectedDrawerIndex,
          onTap: () => _onSelectItem(index),
        );
      },
    );

    var drawerOptions2 = new ListView.builder(
      itemCount: widget.drawerItems1.length-3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var d = widget.drawerItems1[index+3];
        return new ListTile(
          leading: Icon(d.icon),
          title: Text(d.title),
          selected: index+3 == _selectedDrawerIndex,
          onTap: () => _onSelectItem(index+3),
        );
      },
    );

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Ubuntu'
      ),
      home: new Scaffold(
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Mahajir Taqarrub",style: TextStyle(fontFamily: Configs.defaultFont,fontWeight: FontWeight.w100)), 
                accountEmail: Text("KELAS XI.B - NIS: 12150026", style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 12)),
                currentAccountPicture: CircleAvatar(backgroundImage: new AssetImage('assets/images/student-logo.png')),
              ),
              
              new Column(
                children: <Widget>[
                  drawerOptions1,
                  new Divider(),
                  // drawerOptions2
                ],
              )
            ],
          ),
        ),
        body: _getDrawerItemWidget(_selectedDrawerIndex),
      ),
    );
  }
}