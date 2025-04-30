import 'package:flutter/material.dart';

import 'PantInicial.dart';
import 'video12.dart';
import 'video13.dart';
import 'video14.dart';
import 'video15.dart';
import 'video16.dart';
import 'video17.dart';
import 'video18.dart';
import 'video19.dart';
import 'video20.dart';
import 'video21.dart';

void main() => runApp(MisRutas());

class MisRutas extends StatelessWidget {
  const MisRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rutas Entre Paginas',
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => const PantallaInicial(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/video12': (context) => const Video12(),
          '/video13': (context) => const Video13(),
          '/video14': (context) => const Video14(),
          '/video15': (context) => const Video15(),
          '/video16': (context) => const Video16(),
          '/video17': (context) => const Video17(),
          '/video18': (context) => const Video18(),
          '/video19': (context) => const Video19(),
          '/video20': (context) => const Video20(),
          '/video21': (context) => const Video21(),
        });
  }
}
