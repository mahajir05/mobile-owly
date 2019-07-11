import 'package:flutter/material.dart';

class Berita extends StatefulWidget {
  @override
  _Berita createState() => new _Berita();
}

class _Berita extends State<Berita> {
  Icon icon = Icon(Icons.search);
  Widget appBarTitle = Text('Berita');
  bool _isSearching;
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: <Widget>[
        new AppBar(
          title: appBarTitle,
          actions: <Widget>[
            new IconButton(
              icon: icon,
              onPressed: (){
                setState(() {
                  if (this.icon.icon == Icons.search) {
                    this.icon = new Icon(Icons.close);
                    this.appBarTitle = TextField(
                      controller: _controller,
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "Search here...",
                        hintStyle: TextStyle(
                          color: Colors.grey[300]
                        ),
                      ),
                    );
                    _handleSearchStart();
                  } else {
                    _handleSearchEnd();
                  }
                });
              },
            ),
          ],
        ),

        new Expanded(
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            padding: EdgeInsets.all(0),
            itemBuilder: (context, index) {
              String subtitle = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
              double trailing;

              // if (subtitle.length > 90) {
              //   subtitle = subtitle.substring(0, 90);
              // }

              if (index%2 == 1) {
                trailing = 150;
              } else {
                trailing = 0;
              }

              return Card(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15
                  ),
                  child: ListTile(
                    title: Text('Judul Berita'),
                    subtitle: Padding(
                      padding: EdgeInsets.only(
                        top: 5
                      ),
                      child: Text(
                        subtitle, 
                        style: TextStyle(
                          fontSize: 12
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    trailing: Image.network(
                      "https://duniagames.co.id/image/jpg/71078/800/450",
                      width: trailing,
                      height: 250,
                      // color: Colors.grey,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }


  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.icon = new Icon(
        Icons.search,
        color: Colors.white,
      );
      this.appBarTitle = new Text(
        "Berita",
        style: new TextStyle(color: Colors.white),
      );
      _isSearching = false;
      _controller.clear();
    });
  }
  
}