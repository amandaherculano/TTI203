import 'package:colecoes/colecoes.dart' as colecoes;

void main(List<String> arguments) {
  //set
  // {1, 2}
  var tupla  = ('Ana', 18, true, 43);
  print(tupla);
  print(tupla.runtimeType);
  print(tupla.$4);
  print(tupla.$1);

  //é um mapa => dicionario, nao armazena elementos escalaveis e sim chave e valor
  var teste = {};

  //conjunto vazio colcoa type anotation
  var testeType = <String, int> {};

  var A = {1, 2, 3, 4, 5};
  var B = {3, 4, 5, 6, 7};
  print(A.union(B)); //ORDEM IMPREVISIVEL, SE DEPENDESSE DE ORDEM USARIA LISTA
  print(A.intersection(B)); //tem em comum 
  print(A.difference(B)); //tem em A e nao tem em B =>nao é comultativa ordem importa
  var portugues = {'Brasil', 'Portugal'};
  var europeus = {'Portugal', 'Espanha', 'França'};

  //todos os paises exceto aqueles que falam portugues e sao europeus simultaneamente
  print((portugues.union(europeus)).difference(portugues));

  //mapas

  var pessoa = {
    //sem nada é dinamico
    'nome': 'Ana', //string object para chave e valor é Object
    'idade': 18,
  }

  var lembretes = { //podem ser de qualquer tipo
    1: 'Comprar pão',
    2: 'Comprar leite'
  };

  Map<String, int> m1; //não usa identificador de tipo 
  var m2 = <String, int> {}; //usa identificador de tipo, tipo parametrico


  var pessoa2 = {
    'nome': 'Ana',
    'nome': 'Maria', //sobrescreve
  }

  pessoa['nome'] = 'Maria'; //sobrescreve -> nao pode ter chave duplicada, mas valor sim 


  //type casting 
  var pessoa1 = <String, dynamic> {
    'nome': 'Ana',
    'idade': 18,
  };

  //nao sabe que tipo é, entao nao pode acessar propriedades, nao sabe que  Ana é string
  print(pessoa1['nome']);
  final nome = pessoa1['nome'] as String; //type casting
  //agora permete acessar propriedades
  print(nome.toUpperCase());

  //mesmo que colocar algo que não é string como string ele deixa passar, promessa que não pe verdadeira, gera erro em tempo de execução (int para letra maiuscula)

  //keys, values, entries
  var pessoa3 = {
    'nome': 'Ana', //um entry 
    'idade': 18,
  };
  
  //for each para iterar sobre as chaves

  for ( final key in pessoa2.keys) {
    print(key);
  }
  //for each para iterar sobre os valores
  for ( final value in pessoa2.values) {
    print(value);
  }
  //for each para iterar sobre os entries
  for ( final entry in pessoa2.entries) {
    print(entry.key);
    print(entry.value);
  }

  //colecoes de coleções 
  //armazenamento de uma colecao de filmes
  //filme: titulo, genero, notas

  // List < Map < String, Object >> filmes = 
  var filmes = < Map < String, Object?> > [ //lista de mapas []
    {
      'titulo': 'O Poderoso Chefão',
      'genero': 'Drama',
      'notas': [8, 9, 9, 8, 10],
    },
    {
      'titulo': 'O Senhor dos Anéis',
      'genero': 'Fantasia',
      'notas': [7, 8, 9, 8, 10],
    },
    {
      'titulo': 'O Poderoso Chefão',
      'genero': 'Drama',
      'notas': [8, 9, 9, 8, 10],
    },
  ];


  var idadePedro = 17;
  var idadeMaria = 18;

  var maioresIdade = [
    'Ana',
    if (idadePedro >= 18) 'Pedro',
    if (idadeMaria >= 18) 'Maria',
  ];

  var nomes1 = ['Ana', 'Pedro', 'Maria'];
  var nomes2 = [
    'Carlos',
    nomes1, //lista dentro de lista
    for (var nome in nomes1)
];

  //iterar sobre a colecao de filmes

  //FAZER APOSTILA 03 EXERCICIO!!

}
