import 'package:flutter/material.dart';

class DetailDoa extends StatelessWidget {
  final String itemNama;
  final String itemArab;
  final String itemArti;

  const DetailDoa({Key key, this.itemNama, this.itemArab, this.itemArti})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              itemNama,
              style: TextStyle(fontSize: 17.0),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Text(
                  itemArab,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                  child: Container(
                    height: 8.0,
                    width: 800.0,
                    color: Colors.blue,
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    itemArti,
                    style: TextStyle(fontSize: 20.0),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
