import 'package:flutter/material.dart';

class UtsDanUas extends StatelessWidget {
  final String tittle;

  const UtsDanUas({Key key, this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("$tittle"),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: (){},
        ),
      ),

      body: new Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            new Container(
              height: 60,
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    flex: 5,
                    child: new Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        border: Border(
                          top: BorderSide(),
                          right: BorderSide(),
                          bottom: BorderSide(),
                          left: BorderSide()
                        )
                      ),
                      child: Center(
                        child: Text('Mata Pelajaran', style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),

                  new Expanded(
                    flex: 6,
                    child: new Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        border: Border(
                          top: BorderSide(),
                          right: BorderSide(),
                          bottom: BorderSide()
                        )
                      ),
                      child: Column(
                        children: <Widget>[
                          new Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide()
                                )
                              ),
                              child: Center(
                                child: Text('Nilai', style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ),

                          new Expanded(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                new Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide()
                                      )
                                    ),
                                    child: Center(
                                      child: Text('1', style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                ),

                                new Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Center(
                                      child: Text('2', style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),

            new Expanded(
              child: new ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  int nomor = index+1;
                  return new Row(
                    children: <Widget>[
                      new Expanded(
                        flex: 5,
                        child: new Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(),
                              right: BorderSide(),
                              bottom: BorderSide()
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Mata Pelajaran $nomor'),
                          ),
                        ),
                      ),

                      new Expanded(
                        flex: 6,
                        child: new Container(
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(),
                              bottom: BorderSide()
                            )
                          ),
                          child: Row(
                            children: <Widget>[
                              new Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide()
                                    )
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Center(
                                      child: Text('8$index.00'),
                                    ),
                                  ),
                                ),
                              ),

                              new Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text('9$index.00'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )
            )
          ],
        ),
      )
    );
  }
  
}