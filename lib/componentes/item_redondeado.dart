import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        Container(
          height: 110.0,
          width: 110.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(110.0),
              border: Border.all(
                color: Colors.red,
                width: 2.0,
              )),
          child: ClipOval(
            child: Image.asset(
              'assets/img/panel.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image.asset(
          'assets/img/texto.jpg',
          height: 30.0,
          width: 150.0,
        )
      ],
    );
  }
}
