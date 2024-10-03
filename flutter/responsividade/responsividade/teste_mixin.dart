mixin DizerOla{
  String ola(){
    return "Olá";
  }
}

mixin DizerMeuMixin{
  String meuMixin(){
    return "Meu Mixin";
  }
}

class OlaMeuMixin with DizerOla, DizerMeuMixin{
  void olaMeuMixin(){
    print('${ola()} ${meuMixin()}');
  }

  void quemSouEu(){
    print('Dizer meu mixin');
  }
}


void main (){
  final teste = OlaMeuMixin();
  teste.olaMeuMixin();
  teste.quemSouEu(); //o ultimo acontece
}
//palavra reservada mixin -> combina funcionalidade de multiplos mixin NÃO HERDA