import 'package:flutter/material.dart';

class App extends StatefulWidget{ //cara da aplicacao
    State<App> createState(){
      return AppState();
    }
  }


class AppState extends State<App>{ //estado da aplicacao
  int numeroImagens = 0;
  @override
  Widget build(BuildContext context) {
    var app = MaterialApp( //se pode nao falar new nao pode //const pq foi declarado internamente como const
  home: Scaffold(
    appBar: AppBar(
        title: const Text("Minhas imagens"),
    ),
    floatingActionButton: FloatingActionButton(  
      onPressed: () { //funcao regular ( se nao tem seta e regular)
        //numeroImagens++; //variavel de estado -> quando tela for atulizada quer que redesenhe, numero exibido da tela

        setState(){ //estado vai ser atulizado -> tela vai ser atulizada MUDA O QUE EXIBE
          numeroImagens++;
        }
    },
    child: Icon(Icons.add), //texto tamanho padrao
    ),
  ),
  );
    runApp(app);
  }
}