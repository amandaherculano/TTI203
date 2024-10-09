import 'package:flutter/material.dart';
import 'package:gerenciamento_de_estado/src/telas/LoginTelas.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        body: LoginTelas(),
      )
    );
  }
}