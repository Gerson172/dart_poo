void main() {
  // extendendo a classe

  Legumes mandioca01 = Legumes("Mandioca", 250, "Marrom", true);
  Fruta banana01 = Fruta("Banana", 100, "Amarela", "Doce", 12);
  Nozes amendoim01 = Nozes("Amendoim", 5, "bege", "Salgado", 50, 0.5);
  Citricas limao01 = Citricas("Limão", 50, "verde", "azedo", 5, 9);

  mandioca01.printAlimento();
  banana01.printAlimento();
  amendoim01.printAlimento();
  limao01.printAlimento();
  print("\n");
  limao01.fazerSuco();
  banana01.separarIngredientes();
  amendoim01.fazerMassa();
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de "
        "$diasParaMadura dias para poder comer. Ela está madura? $isMadura");
  }

  void fazerSuco() {
    print("Você fez um ótimo suco de $nome");
  }

  @override
  void separarIngredientes() {
    print("Pegar o(a) $nome");
  }

  @override
  void fazerMassa() {
    print("Misturar o(a) $nome com farinha, açúcar e ovos");
  }

  @override
  void assar() {
    print("colocar o bolo no forno");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este(a) $nome pesa $peso gramas e é $cor.");
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor); // o super chama o nome, peso e cor do Alimento.

  void cozinhar() {
    if (isPrecisaCozinhar = true) {
      print("Pronto, o $nome está cozinhando");
    } else {
      print("Não precisa de cozinhar");
    }
  }

  @override
  void separarIngredientes() {
    // Ver se o alimento está cozido ou cru
  }
  @override
  void fazerMassa() {
    // Fazer uma papa com o legume
  }
  @override
  void assar() {
    // colocar mais tempo para assar
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refrigerante de $nome");
    } else {
      print("Não existe refrigerante de $nome");
    }
  }
}

class Nozes extends Fruta {
  double porcentagemDeOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemDeOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    super.fazerMassa(); // pra chamar a função novamente
    print("tirar casca");
  }
}

//Abstração -> tudo que é conceito, é abstrato, no caso do Bolo.
abstract class Bolo {
  // -> separo os ingredientes
  void separarIngredientes();
  // -> faço a massa
  void fazerMassa();
  // -> coloco para assar
  void assar();
}
