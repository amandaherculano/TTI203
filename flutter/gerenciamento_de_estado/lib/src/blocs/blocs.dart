import 'dart:async';
import 'package:gerenciamento_de_estado/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart' //extende funcionalidades do asny do dart



class Bloc with Validators{
  //
  final _emailController = StreamController <String>.broadcast();
  final _passwordController = StreamController <String>.broadcast(); //permite que seja acessado por mais de um widget (email e botao)
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream;

  //para botao acessar os dois, combinados
  Stream<bool> get emailAndPasswordOK = CombineLatestStream.combine2(email, password, (e, p) => true)
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  void dispose (){
    _emailController.close();
    _passwordController.close();
  }
  
}

// era instancia global, nao precisa mais
// final bloc = Bloc();