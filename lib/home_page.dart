import 'package:flutter/material.dart';
import 'package:owly/fragments/beranda_page.dart';
import 'package:owly/fragments/berita_page.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Beranda", Icons.home),
    new DrawerItem("Berita", Icons.assignment),
    //new DrawerItem("Chat", Icons.forum),
    new DrawerItem("Profil Sekolah", Icons.account_balance)
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Home();
      case 1:
        return new Berita();
      case 2:
        return new Berita();

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
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
        new ListTile(
          leading: new Icon(d.icon),
          title: new Text(d.title),
          selected: i == _selectedDrawerIndex,
          onTap: () => _onSelectItem(i),
        )
      );
    }

    return new Scaffold(
      // appBar: new AppBar(
      //   // here we display the title corresponding to the fragment
      //   // you can instead choose to have a static title
      //   title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      // ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Mahajir Taqarrub"), 
              accountEmail: Text("12150026", style: TextStyle(fontSize: 12),), 
              currentAccountPicture: CircleAvatar(),
            ),
            
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}