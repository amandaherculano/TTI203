import 'package:flutter/material.dart';
import '../blocs/blocs.dart';

class LoginTelas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text ("Filho1"),
          Text ("Filho2"),
          emailField(),
          passwordField(),
          submitButton()
        ],
        ),
    );
  }
Widget emailField(){

  return StreamBuilder(
    stream: bloc.email, //em emial esta implicito o transform
    builder: (context, snapshot){
      return TextField(
        onChanged: (newValue){
          bloc.changeEmail(newValue);
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'seu@email.com',
          labelText: 'Endereço de e-mail',
          //acessar a propriedade error text e associar a ela o erro que vem do snapshot 
          // errorText: snapshot.error.toString()
          // exibir o erro de maneira condicional, só exibe se tem erro e com ternario 
          errorText: snapshot.hasError ? snapshot.error.toString() : null

      )

      


      );
     }
    //escolher o tipo do teclado, apropriado para email
    //exibir um texto de "dica" para o usuário, dizendo a ele que ele deve digitar um email
  );
  }
  //escrever novo método que produz um campo próprio para senha
  Widget passwordField(){

    return StreamBuilder(
      stream: bloc.password, 
      builder: (context, AsyncSnapshot <String> snapshot){
        return TextField(
          onChanged: (newValue){
            bloc.changePassword(newValue);
          },
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Senha',
            labelText: 'Senha',
            errorText: snapshot.hasError ? snapshot.error.toString() : null
          )
        );
      }
    );
  }
  //escrever novo método que produz um botão
  Widget submitButton(){
    return Container(
      margin: EdgeInsets.only(top: 12.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
                onPressed: (){}, 
                child: Text('Login')
            ),
          )
        ],
      )
      
      
      
    );
  }
}

