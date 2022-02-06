import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemNama;
  final String itemIsi;

  const DetailPage(
      {Key? key,
      required this.itemNama,
      required this.itemIsi, required String itemArti,})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title:
              Text("Detail " + itemNama, style: TextStyle(color: Colors.black)),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                itemNama,
                style: TextStyle(color: Colors.blueAccent, fontSize: 24),
              ),
              Text(itemIsi),
            ]));
  }
}
