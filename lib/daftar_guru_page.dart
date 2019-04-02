import 'package:flutter/material.dart';

class DaftarGuru extends StatefulWidget {
  @override
  _DaftarGuru createState() => _DaftarGuru();
}

class _DaftarGuru extends State<DaftarGuru> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Guru'),
      ),

      body: Column(
        children: <Widget>[
          new Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: <Widget>[
                new Container(
                  width: queryData.size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Wali Kelas',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ),

                new InkWell(
                  onTap: () {},
                  child: new ListTile(
                    title: Text('(Nama Wali Kelas)'),
                    subtitle: Text(
                      '(Mata Pelajaran)',
                      style: TextStyle(
                        fontSize: 12
                      ),
                    ),
                    trailing: Container(
                      width: 140,
                      child: Row(
                        children: <Widget>[
                          new Expanded(
                            flex: 1,
                            child: Container(
                              child: Text('Hadir', textAlign: TextAlign.right,),
                            ),
                          ),
                          
                          new Expanded(
                            flex: 1,
                            child: Container(
                              child: Text('R401', textAlign: TextAlign.right,),
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                )
              ],
            )
          ),

          new Container(
            height: 3,
            width: 200,
            color: Colors.black12,
            margin: EdgeInsets.symmetric(vertical: 10),
          ),

          new Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  Color color;

                  if (index%2 == 1) {
                    color = Colors.grey[100];
                  } else {
                    color = Colors.white;
                  }

                  return Card(
                    color: color,
                    child: InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text('(Nama Guru)'),
                        subtitle: Text(
                          '(Mata Pelajaran)',
                          style: TextStyle(
                            fontSize: 12
                          ),
                        ),
                        trailing: Container(
                          width: 140,
                          child: Row(
                            children: <Widget>[
                              new Expanded(
                                flex: 1,
                                child: Container(
                                  child: Text('Hadir', textAlign: TextAlign.right,),
                                ),
                              ),
                              
                              new Expanded(
                                flex: 1,
                                child: Container(
                                  child: Text('R401', textAlign: TextAlign.right,),
                                ),
                              )
                            ],
                          ),
                        )
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

}