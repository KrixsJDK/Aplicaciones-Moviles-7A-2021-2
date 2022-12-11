import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterasincronio/mockapi.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int volartext = 0;
  double volarancho = 0;
  int volarsegundos = 0;
  int volar = 0;
  int corrertext = 0;
  double correrancho = 0;
  int corrersegundos = 0;
  int correr = 0;
  int caminartext = 0;
  double caminarancho = 0;
  int caminarsegundos = 0;
  int caminar = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 226, 248, 201),
        body: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Cristhopher Alberto Alcivar Briones 7moA"),
              Column(
                children: [
                  FloatingActionButton(
                    onPressed: () async {
                      setState(() {
                        volarancho = 200;
                        volarsegundos = 1;
                      });
                      volar = await MockApi().getFerrariInteger();
                      setState(() {
                        volartext = volar;
                        volarancho = 0;
                        volarsegundos = 0;
                      });
                    },
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.flash_on_rounded,
                      color: Colors.black,
                    ),
                  ),
                  AnimatedContainer(
                    width: volarancho,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.green),
                    duration: Duration(seconds: volarsegundos),
                  ),
                  Text(
                    volartext.toInt().toString(),
                    style: const TextStyle(color: Colors.green, fontSize: 25.0),
                  ),
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          correrancho = 200;
                          corrersegundos = 3;
                        });
                        correr = await MockApi().getHyundaiInteger();
                        setState(() {
                          corrertext = correr;
                          correrancho = 0;
                          corrersegundos = 0;
                        });
                      },
                      backgroundColor: Colors.yellow,
                      child: const Icon(
                        Icons.airport_shuttle_outlined,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: correrancho,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.yellow),
                    duration: Duration(seconds: corrersegundos),
                  ),
                  Text(
                    corrertext.toInt().toString(),
                    style:
                        const TextStyle(color: Colors.yellow, fontSize: 25.0),
                  )
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          caminarancho = 200;
                          caminarsegundos = 10;
                        });
                        caminar = await MockApi().getFisherPriceInteger();
                        setState(() {
                          caminartext = caminar;
                          caminarancho = 0;
                          caminarsegundos = 0;
                        });
                      },
                      backgroundColor: Colors.red,
                      child: const Icon(
                        Icons.directions_walk_sharp,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: caminarancho,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.red),
                    duration: Duration(seconds: caminarsegundos),
                  ),
                  Text(
                    caminartext.toInt().toString(),
                    style: const TextStyle(color: Colors.red, fontSize: 25.0),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
