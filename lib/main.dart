import 'dart:io';

void main(List<String> args) {
  if (args.length < 3) {
    print(
        "Por favor, forneça nome, peso (em kg) e altura (em metros) como argumentos.");
    return;
  }

  final nome = args[0];
  final peso = double.tryParse(args[1]) ?? 0.0;
  final altura = double.tryParse(args[2]) ?? 0.0;

  final imc = calcularIMC(peso, altura);
  final resultado = calcularResultadoIMC(imc);

  print("Nome: $nome");
  print("Peso: $peso kg");
  print("Altura: $altura m");
  print("IMC: $imc");
  print("Resultado: $resultado");
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

String calcularResultadoIMC(double imc) {
  if (imc < 16) {
    return "Magreza Grave";
  } else if (imc < 17) {
    return "Magreza Moderada";
  } else if (imc < 18.5) {
    return "Magreza Leve";
  } else if (imc < 25) {
    return "Saudável";
  } else if (imc < 30) {
    return "Sobrepeso";
  } else if (imc < 35) {
    return "Obesidade Grau 1";
  } else if (imc < 40) {
    return "Obesidade Grau 2";
  } else {
    return "Obesidade Grau 3";
  }
}
