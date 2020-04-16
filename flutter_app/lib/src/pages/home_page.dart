import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle styleText = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hola Mundo',
              style: styleText,
            ),
            Text(
              'Hola Mundo',
              style: styleText,
            ),
          ],
        ),
      ),
    );
  }
}
