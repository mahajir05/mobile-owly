import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_plugin.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';

import 'package:owly/config/running_text.dart';

class MateriElearning extends StatefulWidget {
  final String mataPelajaran;

  const MateriElearning({Key key, this.mataPelajaran}) : super(key: key);

  @override
  _MateriElearning createState() => new _MateriElearning();
}

class _MateriElearning extends State<MateriElearning> {
  String pathPDF = "";

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
  }

  Future<File> createFileOfPdfUrl() async {
    final url = "https://stepthousen.com/247-P04.pdf";
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    
    return Scaffold(
      body: Column(
        children: <Widget>[
          new Container(
            child: Stack(
              children: <Widget>[
                new AppBar(
                  title: MarqueeWidget(
                    child: Text(widget.mataPelajaran),
                  ),
                ),
              ],
            ),
          ),

          new Expanded(
            child: ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              itemBuilder: (context, index){
                String elearn;
                Color color;

                if (index==0) {
                  elearn = "MATERI";
                  color = Colors.indigo;
                } else if (index==1) {
                  elearn = "TUGAS";
                  color = Colors.pink;
                }

                return Container(
                  child: Column(
                    children: <Widget>[
                      new ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            color: color,
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
                                '$elearn',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ),
                      ),

                      new ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(0),
                        itemBuilder: (context, index1) {
                          int no = index1+1;

                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PDFScreen(pathPDF)),
                              );
                            },
                            child: Card(
                              elevation: 5.0,
                              margin: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 5
                              ),
                              child: ListTile(
                                title: Text(
                                  '$elearn $no',
                                  style: TextStyle(
                                    fontSize: 14
                                  ),
                                ),
                                subtitle: Text(
                                  '01-05-2019 00:00  S/D  05-05-2019 23:59',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
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
      ),
    );
  }
  
}



class PDFScreen extends StatefulWidget {
  String pathPDF = "";
  PDFScreen(this.pathPDF);

  @override
  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
      appBar: AppBar(
        title: Text("Document"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      path: widget.pathPDF,
    );
  }
}