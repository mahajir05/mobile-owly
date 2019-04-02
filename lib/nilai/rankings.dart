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
            return Card(
              child: Container(
                width: queryData.size.width,
                child: ListTile(
                  leading: Text('$nomor'),
                  title: Text('Mahajir Taqarrub'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}