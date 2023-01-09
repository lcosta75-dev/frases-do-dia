import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
        child: Column(children: <Widget>[
          Image.asset("images/logo.png"),
          Text(
            "Clique abaixo para gerar uma frase!",
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 17, fontStyle: FontStyle.italic, color: Colors.black),
          ),
          ElevatedButton(
            child: Text(
              "Nova frase",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () {},
          )
        ]),
      ),
    );
  }
}
