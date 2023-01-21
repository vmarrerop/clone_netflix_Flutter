import 'package:clone_netflix/componentes/navbar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botones(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://staticuestudio.blob.core.windows.net/buhomag/2018/10/Cartel-de-Elite-en-Netflix-1.jpg',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black38, Colors.black])),
        ),
        SafeArea(child: NavbarSuperior())
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'Telenovelesco',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        Text(
          'Suspenso insostenible',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        Text(
          'De suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        Text(
          'Adolescente',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget botones() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Mi lista',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              )
            ],
          ),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.white, // Text Color
            ),
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.info,
                color: Colors.white,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Información',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
