import 'dart:convert';

class PessoaModel{
  late String nome; //admita a existencia da variavel, nao inicaliza agora. vou inicializar depois
  late int idade;

  //construtor 
  PessoaModel(this.nome, this.idade);

  PessoaModel.fromJSON(pessoaJSON){ //classe depende para existir do dartconvert -> fala uma vez so masss deve levar so pacote dart convert sempre 
    var pessoaMapa = jsonDecode(pessoaJSON); 
    nome = pessoaMapa['nome'];
    idade = pessoaMapa['idade'];
  }
  
}

void main(){

  var pessoaJSON = '{"nome": "Ana", "idade": 18}';
  var pessoaMapa = json.decode(pessoaJSON); 
  var pessoaModel = PessoaModel(
    pessoaMapa['nome'],
    pessoaMapa['idade']
  );

  print(pessoaModel.idade);
  print(pessoaModel.nome);

  // var pessoaJSON = '{"nome": "Ana", "idade": 22}';
  // var pessoa = json.decode(pessoaJSON);
  // print(pessoa.runtimeType);
  // print(pessoa['nome']);
  // print(pessoa['idade']);
  // print(pessoa.nome);


  /// pular linha na string '''
  var veiculosJSON = ''' [
  {
    "marca": "VW",
    "modelo": "Gol",
    "preco": 30
  },
  {
    "marca": "Chevrolet",
    "modelo": "Corsa",
    "preco": 20
  }

  ] ''';


  var veiculos = json.decode(veiculosJSON);
  print(veiculos);

  var media = 0.0;

  for ( final veiculo in veiculos){
    // print(veiculo);
    // print(veiculo['marca']);
    // print(veiculo['modelo']);
    media += veiculo['preco'];
    

  }
  print(
    veiculos.length== 0 ? "Estoque Vazio":
    "Valor médio: ${(media/veiculos.length).toStringAsFixed(2)}");

}