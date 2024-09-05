void main (){
  final f1= (){
    print('f1');
  }

  final f2 = (){
    print('f2');
    return('f2');
  }

  f1();


  // return implicito 

  final f3 = () => print('f3'); //arrow function válida, abriu e fechou seta e só uma linha 
  //neste caso f3 não devolve nada devolve void

  //return implicito DEVOLVE EXPRESSAO
  //e arrow funcition pode colocar expressoes arbitrarias
  //errado: precisa ser em uma linha 
  // final f4 = () => {
  //   print('oi');
  //   print('oi');
  // };  


  final f4 = () => {
    'a': 'Ana',
    'b': '  Betina'
  }; // {} e um mapa, para chave a valor -> return implicito

  final f5 = () => {
    print('oi'); //fala print
    return {

    }; //devolve mapa
  };



  final f6 = () => (1,2 ); //devolve um set
}

