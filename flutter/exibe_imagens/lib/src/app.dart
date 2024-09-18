import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class App extends StatefulWidget{ //cara da aplicacao
    State<App> createState(){
      return AppState();
    }
  }


class AppState extends State<App>{ //estado da aplicacao
  int numeroImagens = 0;

  void obterImagem() async{
    final url = Uri.http('api.pixels.com', '/v1/search', 
      {'query': 'people' , 'page': '1', 'per_page': '1'});

    final req = http.Request('get', url);

    req.headers.addAll({
      'Authorization': 
      ''
    });

    // req.send().then((result)){
    //   http.Response.fromStream(result).then((response){
    //     // print(response.body);

    //     final mapa = json.decode(response.body);
    //     final imagem = ImagemModel.fromJSON(mapa);
    //     print(imagem);
    //   }); //acessar corpo da resposta, demora, futere que permite oter quando terminar
    // });
    
    final result = await req.send();
    final response = await http.Response.fromStream(result);
    final mapa = json.decode(response.body);
    final image = ImageModel.fromJSON(mapa);

  }

  @override
  Widget build(BuildContext context) {
    // var app = MaterialApp( //se pode nao falar new nao pode //const pq foi declarado internamente como const
    return MaterialApp(
      home: Scaffold(
    appBar: AppBar(
        title: const Text("Minhas imagens"),
    ),
    floatingActionButton: FloatingActionButton(  
      onPressed: () { //funcao regular ( se nao tem seta e regular)
        //numeroImagens++; //variavel de estado -> quando tela for atulizada quer que redesenhe, numero exibido da tela

        setState(){ //estado vai ser atulizado -> tela vai ser atulizada MUDA O QUE EXIBE
          // numeroImagens++;
        }
    },
    child: Icon(Icons.add), //texto tamanho padrao
    ),
   
  ),
    );
  }
}