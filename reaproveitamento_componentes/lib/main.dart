import 'package:flutter/material.dart';
import 'widgets/botoes.dart';
import 'widgets/campo_texto.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MinhaTela());
  }
}

class MinhaTela extends StatelessWidget {
  void calcularTotal() {
    print("O total é: ");
  }

  void limpar() {
    print("Limpando...");
  }

  void enviar() {
    print("Enviando...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sem Reaproveitamento")),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            meuTextField("Nome do Produto",Icons.person),
            meuTextField("Preço",Icons.email),
            meuTextField("Quantidade em Estoque",Icons.phone),
            meuTextField("Categoria",Icons.location_city),
            meuTextField("Código de Acesso",Icons.lock,senha:true),
            meuBotao("Calcular Total", const Color.fromARGB(255, 192, 245, 105),calcularTotal),
            meuBotao("Limpar", Colors.orange,limpar),
            meuBotao("Salvar", Colors.blue,enviar),
          ],
        ),
      ),
    );
  }
}
