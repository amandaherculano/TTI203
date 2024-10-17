import 'package:flutter/material.dart';
import 'package: flutter/wigets.dart';
import 'blocs.dart';


class Provider extends InheritedWidget{ //forncer intancia bloc para outros Widgets -> um objeto do tipo bloc para objeto do tipo widget
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    //updateShouldNotify devolve se deve ser notificado ou não, se atuliza na tela ou não
    //covariant: covariância, gato só pode ser amigo de gato e cachorro com qualquer animal -> fazerAmizade(covariant Gato gato) -> gato só pode ser amigo de gato DESCER HIERARQUIA restringir mais 
    return true;

  }

  // escopo restrito 
  final bloc = Bloc(); //cria uma instancia de bloc
  
  Provider({Key? key, required Widget child}) : super(key: key, child: child); //passa para o super a chave e o filho
}