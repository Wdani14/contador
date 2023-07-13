import 'package:flutter/material.dart';


void main() {
  runApp(MiApp());
}

class MiApp extends StatefulWidget {
  @override
  _MiAppState createState() {
    return _MiAppState();
  }
}

class _MiAppState extends State<MiApp> {
  int contador = 10;

  void sumarContador() {
    setState(() {
      contador += 2;
    });
  }

  void restarContador() {
    setState(() {
      contador -= 2;
    });
  }

  void multiplicarContador() {
    setState(() {
      contador *= 2;
    });
  }

  void dividirContador() {
    setState(() {
      contador = contador ~/ 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CONTADOR',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('CONTADOR'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$contador',
                style: TextStyle(fontSize: 50),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xc8ca770c),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: sumarContador,
              tooltip: 'Incrementar',
              child: Icon(Icons.add, color: Colors.black),
              backgroundColor: Colors.lightGreenAccent,
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: restarContador,
              tooltip: 'Decrementar',
              child: Icon(Icons.remove, color: Colors.black),
              backgroundColor: Colors.limeAccent,
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: multiplicarContador,
              tooltip: 'Multiplicar',
              child: Icon(Icons.close, color: Colors.black),
              backgroundColor: Colors.orange[100],
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: dividirContador,
              tooltip: 'Dividir',
              child: Icon(Icons.rotate_left_outlined, color: Colors.black),
              backgroundColor: Color.fromARGB(255, 137, 165, 14),
            ),
          ],
        ),
      ),
    );
  }
}
