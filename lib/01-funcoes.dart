void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e sitrica";
  int diasDesdeColheita = 40;

  print(funcQuantosDiasMadura(diasDesdeColheita));

  // 1 - parametros posicionais obrigatórios
  funcMostrarMadura("Uva", 40);

  // 2 - nomeados Opcionais
  funcMostrarMadura2("Uva", 40, cor: "Roxa");

  // 3 - modificador required
  funcMostrarMadura3(nomeFruta: "Uva", dias: 40, cor: "Roxa");
}

funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasfaltam = dias - diasParaMadura;
  return quantosDiasfaltam;
}

// 1 - parametros posicionais obrigatórios
void funcMostrarMadura(String nomeFruta, int dias) {
  if (dias >= 30) {
    print("a fruta $nomeFruta está madura");
  } else {
    print("a fruta $nomeFruta não está madura");
  }
}

// 2 - parametros posicionais opcionais
void funcMostrarMadura2(String nomeFruta, int dias, {String? cor}) {
  if (dias >= 30) {
    print("a fruta $nomeFruta está madura");
  } else {
    print("a fruta $nomeFruta não está madura");
  }

  if (cor != null) {
    print("a $nomeFruta é $cor");
  }
}

// 3 - modificador required
void funcMostrarMadura3(
    {required String nomeFruta, required int dias, required String cor}) {
  if (dias >= 30) {
    print("a fruta $nomeFruta está madura");
  } else {
    print("a fruta $nomeFruta não está madura");
  }
}
