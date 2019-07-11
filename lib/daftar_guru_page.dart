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
          new ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Container(
              height: 35,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.green,
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
                    'Wali Kelas',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ),
          ),

          new Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: new InkWell(
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
                    'Guru Mapel',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ),
          ),

          new Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  Color color;

                  if (index%2 == 0) {
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