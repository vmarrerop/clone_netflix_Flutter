import 'package:flutter/material.dart';

class ItemCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Image.asset(
        'assets/img/panel.jpg',
        width: 150.0,
        fit: BoxFit.cover,
      ),
      const SizedBox(
        width: 15.0,
      )
    ]);
  }
}
