import 'package:flutter/material.dart';
import 'package:owly/class/class_beranda_menu.dart';
import 'package:owly/config/configs.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData = MediaQuery.of(context);
    
    return Column(
      children: <Widget>[
        new Container(
          height: 200,
          child: Stack(
            children: <Widget>[
              new AppBar(
                elevation: 0.0,
                title: Text(
                  Configs.schoolName,
                  style: TextStyle(
                    fontFamily: Configs.defaultFont,
                    fontSize: 18,
                    fontWeight: FontWeight.w200
                  ),
                ),
              ),

              new Positioned.fill(
                top: 105,
                bottom: 20,
                left: 20.0,
                right: 20.0,
                child: new Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[900].withOpacity(0.7)
                  ),
                  child: ListTile(
                    title: Text(
                      "Mahajir Taqarrub", 
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Colors.white
                      ),
                    ),
                    subtitle: Text(
                      "XII IPA 2", 
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[300]
                      ),
                    ),
                    trailing: Text(
                      "SISWA", 
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        new Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new GridView.builder(
                  itemCount: berandaMenu.length,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => berandaMenu[index].page
                          ));
                        },
                        child: SizedBox(
                          height: queryData.size.height,
                          width: queryData.size.width,
                          child: Stack(
                            children: <Widget>[
                              new Container(
                                height: queryData.size.height,
                                width: queryData.size.width,
                                color: Colors.transparent,
                                child: new DecoratedBox(
                                  position: DecorationPosition.foreground,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.blueGrey[100].withOpacity(0.9)
                                    //color: berandaMenu[index].backgroundMenuColor,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      'assets/images/background_button.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              new Positioned.fill(
                                bottom: 30,
                                child: new Center(
                                  child: Image.asset(
                                    berandaMenu[index].menuIcon,
                                    height: 50,
                                    width: 50,
                                  )
                                ),
                              ),

                              new Align(
                                alignment: Alignment.bottomCenter,
                                child: new Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: const Radius.circular(10.0),
                                      bottomRight: const Radius.circular(10.0)
                                    ),
                                    //color: Colors.black.withOpacity(0.4)
                                  ),
                                  child: new Center(
                                    child: Text(
                                      berandaMenu[index].menuName,
                                      style: TextStyle(
                                        fontSize: 12,
                                        //color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ),
                      ),
                    );
                  },
                ),

                new ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Container(
                    height: 35,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                      )
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5
                        ),
                        child: Text(
                          'Berita Terbaru',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ),
                ),

                new Container(
                  height: 280,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          width: queryData.size.width *0.8,
                          child: Column(
                            children: <Widget>[
                              new Padding(
                                padding: EdgeInsets.all(10),
                                child: Image.network("https://duniagames.co.id/image/jpg/71078/800/450"),
                              ),

                              new Container(
                                padding: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width,
                                child: new Text(
                                  "Judul Berita",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),

                              new Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: new Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
  
}