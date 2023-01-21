import 'package:flutter/material.dart';

class NavbarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          'assets/img/logo_netflix.png',
          width: 50.0,
        ),
        const Text(
          'Programas',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        const Text(
          'Peliculas',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        const Text(
          'Mi Lista',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        )
      ],
    );
  }
}
