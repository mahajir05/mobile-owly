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
          height: 300,
          child: Stack(
            children: <Widget>[
              // new DecoratedBox(
              //   position: DecorationPosition.foreground,
              //   decoration: new BoxDecoration(
              //     color: Colors.black.withOpacity(0.4)
              //   ),
              //   child: new Image.asset(
              //     'assets/images/sekolah.jpg',
              //     fit: BoxFit.cover,
              //     height: 200,
              //   ),
              // ),

              new AppBar(
                backgroundColor: Colors.blueAccent,
                title: Text(Configs.schoolName,
                  style: TextStyle(
                    fontFamily: Configs.defaultFont,
                    fontSize: 18,
                    fontWeight: FontWeight.w200
                  ),
                ),
                elevation: 0.0,
              ),

              new Positioned.fill(
                top: 80,
                bottom: 90,
                left: 15.0,
                right: 15.0,
                child: new Card(
                  elevation: 4.0,
                  child: Image.network(
                    Configs.dashboardLogoURL,
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: EdgeInsets.all(5),
                ),
              ),

              
              new Positioned.fill(
                top: 215,
                bottom: 10,
                left: 15.0,
                right: 15.0,
                child: new Card(
                  elevation: 3.0,
                  child: ListTile(
                    title: Text("Mahajir Taqarrub", style: TextStyle(fontFamily: Configs.defaultFont,fontWeight: FontWeight.w100),),
                    subtitle: Text("XII IPA 2", style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 12.5),),
                    trailing: Text("SISWA", style: TextStyle(fontFamily: Configs.defaultFont,fontSize: 20, fontWeight: FontWeight.w500),),
                  ),
                ),
              ),

            ],
          ),
        ),

        new Expanded(
          child: new GridView.builder(
            itemCount: berandaMenu.length,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ),
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(15.0),
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
                              color: berandaMenu[index].backgroundMenuColor,
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
                              //scale: 0.5,
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
                              color: Colors.black.withOpacity(0.4)
                            ),
                            //color: Colors.black.withOpacity(0.4),
                            child: new Center(
                              child: Text(
                                  berandaMenu[index].menuName,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold
                                  ),
                                ),
                            ),
                          ),
                        )

                        // new Positioned.fill(
                        //   top: queryData.padding.top + 50,
                        //   child: new Center(
                        //     child: new Container(
                        //       height: MediaQuery.of(context).size.height,
                        //       width: MediaQuery.of(context).size.width,
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.only(
                        //           bottomLeft: const Radius.circular(10.0),
                        //           bottomRight: const Radius.circular(10.0)
                        //         ),
                        //         color: Colors.black.withOpacity(0.4)
                        //       ),
                        //       //color: Colors.black.withOpacity(0.4),
                        //       child: new Center(
                        //         child: Text(
                        //             berandaMenu[index].menuName,
                        //             style: TextStyle(
                        //               fontSize: 12,
                        //               color: Colors.white,
                        //               //fontWeight: FontWeight.bold
                        //             ),
                        //           ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
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