void main() {
  // extendendo a classe
  Fruta fruta01 = Fruta("Laranja", 100.2, "laranja", "Doce e sitrica", 40);
  Fruta fruta02 = Fruta.maiuscula("Uva", 40, "Roxa", "Doce", 20);

  print(fruta01.nome);
  print(fruta02.nome);

  fruta01.estaMadura(30);
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  Fruta.maiuscula(
      this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura}) {
    nome = nome.toUpperCase();
  }

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de "
        "$diasParaMadura dias para poder comer. Ela está madura? $isMadura");
  }
}
