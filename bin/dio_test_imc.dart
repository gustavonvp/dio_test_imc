import 'package:dio_test_imc/utils/console_utils.dart';
import 'package:dio_test_imc/services/calculadora_imc.dart';
import 'package:dio_test_imc/models/pessoa.dart';

void execute() {
  print('Bem vindo a calculadora de IMC');

  String nome = ConsoleUtils.lerString(mensagem: 'Nome:');
  double peso = ConsoleUtils.lerDouble(mensagem: 'Peso (kg):');
  double altura = ConsoleUtils.lerDouble(mensagem: 'Altura (metros):');
  Pessoa pessoa = Pessoa(nome, peso, altura);

  CalculadoraImc calculadora = CalculadoraImc();
  calculadora.resultado(pessoa);
}

void main() {
  execute();
}
