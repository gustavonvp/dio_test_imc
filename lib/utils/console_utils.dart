import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerString({String mensagem = ''}) {
    if (mensagem.trim() != '') {
      print(mensagem);
    }

    var linha = stdin.readLineSync(encoding: utf8);
    return linha ?? '';
  }

  static double lerDouble({String mensagem = ''}) {
    do {
      try {
        var linha = lerString(mensagem: mensagem);

        // Tratar número no formato 0.000,00
        if (linha.contains(',')) {
          linha = linha.replaceAll('.', '');
          linha = linha.replaceAll(',', '.');
        }

        return double.parse(linha);
      } catch (e) {
        print('Número inválido.');
      }
    } while (true);
  }
}
