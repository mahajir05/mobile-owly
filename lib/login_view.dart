import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  _Login createState() => new _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: <Widget>[
            new ClipPath(
              clipper: MyClipper(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  image: new DecorationImage(
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    image: AssetImage('assets/images/bg1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 80.0, bottom: 40.0),
                child: Image.asset(
                  'assets/owly_logo.png',
                  height: 128,
                  width: 128,
                ),
              ),
            ),

            new Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 10),
              child: Text(
                "Sekolah",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
            new Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  new Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Icon(
                      Icons.school,
                      color: Colors.grey,
                    ),
                  ),
                  new Container(
                    height: 30.0,
                    width: 1.0,
                    color: Colors.grey.withOpacity(0.5),
                    margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                  ),
                  new Expanded(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text(
                          'Pilih Sekolah...',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            new Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "Nomor Induk",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
            new Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  new Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                    ),
                  ),
                  new Container(
                    height: 30.0,
                    width: 1.0,
                    color: Colors.grey.withOpacity(0.5),
                    margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                  ),
                  new Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukan nomor induk',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "Kata Sandi",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
            new Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  new Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: Icon(
                      Icons.lock_open,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 30.0,
                    width: 1.0,
                    color: Colors.grey.withOpacity(0.5),
                    margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                  ),
                  new Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukan kata sandi',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),

            new Container(
              margin: const EdgeInsets.only(
                left: 180.0,
                right: 20.0
              ),
              child: FlatButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)
                ),
                color: Colors.transparent,
                child: Container(
                  //padding: const EdgeInsets.only(right: 20.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Lupa Kata Sandi?",
                    style: TextStyle(
                      color: Colors.blue
                    ),
                  ),
                ),
                onPressed: () => {},
              ),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0)),
                      splashColor: Colors.blue,
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "MASUK",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onPressed: () => {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height * 0.85);
    p.arcToPoint(
      Offset(0.0, size.height * 0.85),
      radius: const Radius.elliptical(50.0, 10.0),
      rotation: 0.0,
    );
    p.lineTo(0.0, 0.0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}