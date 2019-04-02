import 'package:flutter/material.dart';

class MataPelajaranTable extends StatelessWidget {
  String kelas;
  Color warnaBackground1;
  Color warnaBackground2;
  Color warnaBackground3;

  MataPelajaranTable({
    this.kelas, 
    this.warnaBackground1,
    this.warnaBackground2,
    this.warnaBackground3
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Expanded(
      flex: 1,
      child: Container(
        child: Column(
          children: <Widget>[
            new Container(
              height: 90,
              decoration: BoxDecoration(
                color: warnaBackground1,
                border: Border(
                  top: BorderSide(width: 2),
                  right: BorderSide(width: 2),
                  bottom: BorderSide(width: 2)
                ),
              ),
              child: Column(
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 2)
                        )
                      ),
                      child: Center(
                        child: Text('$kelas', style: TextStyle(fontWeight: FontWeight.bold),)
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
                              color: warnaBackground2,
                              border: Border(
                                right: BorderSide(width: 2),
                              )
                            ),
                            child: Column(
                              children: <Widget>[
                                new Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(width: 2)
                                      )
                                    ),
                                    child: Center(
                                      child: Text('Semester 1', style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                ),

                                new Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Row(
                                      children: <Widget>[
                                        new Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Center(
                                              child: Text('1', style: TextStyle(fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        ),

                                        new Expanded(
                                          flex: 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border(
                                                left: BorderSide(width: 2),
                                                right: BorderSide(width: 2)
                                              )
                                            ),
                                            child: Center(
                                              child: Text('2', style: TextStyle(fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        ),

                                        new Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Center(
                                              child: Text('3', style: TextStyle(fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        new Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: warnaBackground3,
                            ),
                            child: Column(
                              children: <Widget>[
                                new Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(width: 2)
                                      )
                                    ),
                                    child: Center(
                                      child: Text('Semester 2', style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                ),

                                new Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Row(
                                      children: <Widget>[
                                        new Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Center(
                                              child: Text('1', style: TextStyle(fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        ),

                                        new Expanded(
                                          flex: 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border(
                                                left: BorderSide(width: 2),
                                                right: BorderSide(width: 2)
                                              )
                                            ),
                                            child: Center(
                                              child: Text('2', style: TextStyle(fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        ),

                                        new Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Center(
                                              child: Text('3', style: TextStyle(fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            new Expanded(
              child: Container(
                child: Row(
                  children: <Widget>[
                    new Expanded(
                      flex: 1,
                      child: Container(
                        child: new ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            Widget nilai;

                            if (index == 0 || index == 1)
                            {
                              nilai = new Row(
                                children: <Widget>[
                                  new Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Center(
                                          child: Text('70'),
                                        ),
                                      ),
                                    ),
                                  ),

                                  new Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(),
                                          right: BorderSide()
                                        )
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Center(
                                          child: Text('70'),
                                        ),
                                      ),
                                    ),
                                  ),

                                  new Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Center(
                                        child: Text('70'),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }

                            else
                            {
                              nilai = new Padding(
                                padding: EdgeInsets.all(10),
                                child: Center(
                                  child: Text('70'),
                                ),
                              );
                            }

                            return new Container(
                              decoration: BoxDecoration(
                                color: warnaBackground2,
                                border: Border(
                                  right: BorderSide(),
                                  bottom: BorderSide(),
                                )
                              ),
                              child: nilai
                            );
                          },
                        ),
                      ),
                    ),

                    new Expanded(
                      flex: 1,
                      child: Container(
                        child: new ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            Widget nilai;

                            if (index == 0 || index == 1)
                            {
                              nilai = new Row(
                                children: <Widget>[
                                  new Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Center(
                                          child: Text('75'),
                                        ),
                                      ),
                                    ),
                                  ),

                                  new Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(),
                                          right: BorderSide()
                                        )
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Center(
                                          child: Text('75'),
                                        ),
                                      ),
                                    ),
                                  ),

                                  new Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Center(
                                        child: Text('75'),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }

                            else
                            {
                              nilai = new Padding(
                                padding: EdgeInsets.all(10),
                                child: Center(
                                  child: Text('75'),
                                ),
                              );
                            }

                            return new Container(
                              decoration: BoxDecoration(
                                color: warnaBackground3,
                                border: Border(
                                  right: BorderSide(),
                                  bottom: BorderSide(),
                                )
                              ),
                              child: nilai
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  
}