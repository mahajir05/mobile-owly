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
          child: new GridView.builder(
            itemCount: berandaMenu.length,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3
            ),
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
        )
      ],
    );
  }
  
}