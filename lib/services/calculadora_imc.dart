import 'package:dio_test_imc/models/pessoa.dart';

class CalculadoraImc {
  double calcular(Pessoa pessoa) {
    double a = 1.0725;
    double b = 6.6088;

    double imc = pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
    double testimc = a *
            imc *
            (pessoa.getPeso() *
                ((pessoa.getPeso() / 1000) * (pessoa.getPeso() / 1000))) +
        b;
    return double.parse(testimc.toStringAsFixed(2));
  }

  void resultado(Pessoa pessoa) {
    double imcx = calcular(pessoa);

    if (imcx < 18.5) {
      print('baixo peso');
    } else if (imcx > 18.5 && imcx < 24.9) {
      print('eutrofia');
    } else if (imcx > 25 && imcx < 29.9) {
      print('sobrepeso');
    } else if (imcx > 30 && imcx < 34.9) {
      print('obesidade grau I');
    } else if (imcx > 35 && imcx < 39.9) {
      print('Obesidade Grau II');
    } else if (imcx > 40 && imcx < 49.9) {
      print('Obesidade Grau III (severa)');
    } else if (imcx > 50) {
      print('Obesidade Grau IIII (mórbida)');
    }
  }
}
