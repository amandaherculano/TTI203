import 'package:flutter/material.dart';
import 'package:gerenciamento_de_estado/src/telas/LoginTelas.dart';
import 'blocs/provider.dart'

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Login',
        home: Scaffold(
          body: LoginTelas(),
        ) 
      )
    );
  }
}