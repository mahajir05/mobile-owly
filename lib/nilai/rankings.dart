import 'package:flutter/material.dart';

class Rankings extends StatefulWidget {
  @override
  _Rankings createState() => new _Rankings();
}

class _Rankings extends State<Rankings> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Rankings'),
      ),

      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            int nomor = index+1;
            double heightCard;
            double sizeText;
            FontWeight fontWeight;
            Widget leading;

            if (index == 0) {
              leading = new Image.asset(
                'assets/images/rank1.png',
              );
              heightCard = 90;
              sizeText = 16;
              fontWeight = FontWeight.w900;
            } else if (index == 1) {
              leading = new Image.asset('assets/images/rank2.png');
              heightCard = 70;
              sizeText = 16;
              fontWeight = FontWeight.bold;
            } else if (index == 2) {
              leading = new Image.asset('assets/images/rank3.png');
              heightCard = 70;
              sizeText = 16;
              fontWeight = FontWeight.bold;
            } else {
              leading = new Text('$nomor');
              fontWeight = FontWeight.normal;
            }

            return Card(
              margin: EdgeInsets.only(
                top: 20
              ),
              child: Container(
                height: heightCard,
                width: queryData.size.width,
                child: ListTile(
                  leading: new Container(
                    width: 96,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: leading,
                      ),
                    ),
                  ),
                  title: Text(
                    'Mahajir Taqarrub',
                    style: TextStyle(
                      fontSize: sizeText,
                      fontWeight: fontWeight
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}