import 'package:flutter/material.dart';

class PembayaranHome extends StatefulWidget {
  @override
  _PembayaranHome createState() => new _PembayaranHome();
}

class _PembayaranHome extends State<PembayaranHome> {
  Icon icon = Icon(Icons.search);
  Widget appBarTitle = Text('');
  Widget iconPayment = new Align(
    alignment: Alignment.bottomCenter,
    child: Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        )
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Icon(
          Icons.payment,
          color: Colors.green,
        ),
      ),
    ),
  );
  final TextEditingController _controller = new TextEditingController();
  bool _isSearching;
  Color bgAppBarColor = Colors.transparent;
  double appBarHeight = 230;
  bool iconPaymentV = true;
  
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        new Container(
          height: appBarHeight,
          child: Stack(
            children: <Widget>[
              new Image.asset(
                'assets/images/payment-bg.jpg',
                fit: BoxFit.cover,
                height: 200,
                width: queryData.size.width,
              ),

              new AppBar(
                elevation: 0.0,
                backgroundColor: bgAppBarColor,
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
                          this.bgAppBarColor = Colors.blue;
                          this.appBarHeight = 80;
                          this.iconPaymentV = false;
                          _handleSearchStart();
                        } else {
                          _handleSearchEnd();
                        }
                      });
                    },
                  )
                ],
              ),

              new Visibility(
                visible: iconPaymentV,
                child: new Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.payment,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        new Expanded(
          child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            padding: EdgeInsets.all(0),
            itemBuilder: (context, index){
              int no = index+1;
              String card;
              Widget addAccount;
              Color color;

              if (index==0) {
                card = "REKENING PONSEL";
                color = Colors.red;
                addAccount = Container(height: 30, width: 120,);
              } else if (index==1) {
                card = "SAVINGS & CURRENTS";
                color = Colors.brown;
                addAccount = IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                );
              } else if (index==2) {
                card = "CREDIT CARDS";
                color = Colors.yellow;
                addAccount = Container(height: 30, width: 120,);
              } else if (index==3) {
                card = "TIME DEPOSITS";
                color = Colors.orange;
                addAccount = IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                );
              }

              return Container(
                child: Column(
                  children: <Widget>[
                    new ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)
                          )
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '$no',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ),
                      title: Text(
                        card,
                        style: TextStyle(
                          fontSize: 14
                        ),
                      ),
                      trailing: addAccount
                    ),

                    new ListView.builder(
                      itemCount: 1,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      itemBuilder: (context, index1) {
                        return Card(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                new Container(
                                  width: queryData.size.width,
                                  color: Colors.transparent,
                                  margin: EdgeInsets.only(
                                    bottom: 5
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      new Text('Rekening Mandiri'),
                                      new Padding(
                                        padding: EdgeInsets.only(
                                          left: 5
                                        ),
                                        child: Text(
                                          '(***** 50000)',
                                          style: TextStyle(
                                            color: Colors.grey
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                
                                new Container(
                                  width: queryData.size.width,
                                  color: Colors.transparent,
                                  margin: EdgeInsets.only(
                                    bottom: 5
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      new Text(
                                        'IDR',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey
                                        ),
                                      ),
                                      new Padding(
                                        padding: EdgeInsets.only(
                                          left: 10
                                        ),
                                        child: Text(
                                          '0.00',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        )
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
      this.bgAppBarColor = Colors.transparent;
      this.appBarHeight = 230;
      this.iconPaymentV = true;

      this.icon = new Icon(
        Icons.search,
        color: Colors.white,
      );
      this.appBarTitle = new Text(
        "",
        style: new TextStyle(color: Colors.white),
      );
      _isSearching = false;
      _controller.clear();
    });
  }
}