import 'package:dio_test_imc/models/pessoa.dart';
import 'package:dio_test_imc/services/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  group('Calcular IMC', () {
    var valoresParaTestar = {
      {'nome': 'Pessoa 1', 'peso': 72.5, 'altura': 1.72}: 16.62,
      {'nome': 'Pessoa 2', 'peso': 80, 'altura': 1.80}: 20.17,
      {'nome': 'Pessoa 3', 'peso': 70, 'altura': 1.50}: 18.05,
      {'nome': 'Pessoa 4', 'peso': 70, 'altura': 1.90}: 13.74,
      {'nome': 'Pessoa 5', 'peso': 80, 'altura': 1.60}: 23.77,
      {'nome': 'Pessoa 6', 'peso': 90, 'altura': 1.60}: 34.1,
      {'nome': 'Pessoa 7', 'peso': 100.7, 'altura': 1.50}: 55.62,
    };

    valoresParaTestar.forEach((values, expected) {
      test('Entrada: $values Esperado: $expected', () {
        Pessoa pessoa = Pessoa(
            values['nome'].toString(),
            double.parse(values['peso'].toString()),
            double.parse(values['altura'].toString()));

        CalculadoraImc calculadora = CalculadoraImc();
        expect(calculadora.calcular(pessoa), expected);
      });
    });
  });
}
