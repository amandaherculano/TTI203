//legibilidade! mas fica mais verbosa

//{} indicar que é nomeado 
void ambos (int posicional1, {int? nomeado}){
  print(posicional1);
  print(nomeado);
}


//posicionais vem primeiro
// void ambosErrado ( {int n =2},  int a){

// }

//ordem importa nesse caso

//na hora de definir deve

void ambosVarios (int a, int b, {int? c, int? d}){
  
}


void posicional(int n1){
  print(n1);
}

void nomeado({int? dividendo = 2, int? divisor = 3}){
  print(dividendo! ~/ divisor!);
}

void main(){
  posicional(1);
  nomeado();
  nomeado( divisor: 3, dividendo: 2); 
  ambosVarios( d: 2, 1, 2, c: 4);

}