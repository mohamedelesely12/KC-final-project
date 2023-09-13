import 'package:flutter/material.dart';
import 'package:gheras/pages/plants.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.ali});

  final Plants ali;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("معلومات"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(ali.imgUrl),
          Text(ali.name),
          Text(ali.description),
        ],
      )),
    );
  }
}
