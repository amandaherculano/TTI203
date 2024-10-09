import 'package:flutter/material.dart';

class LoginTelas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text ("Filho1"),
          Text ("Filho2"),
        ],
        ),
    );
  }

  Widget emailField(){
  return TextField();
    decoration: InputDecoration(
      labelText: 'Email',
      hintText: ''
  }
}


