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

// Para capturar o que é digitado precisamos passar um controller.
final TextEditingController nomeController = TextEditingController();
final TextEditingController precoController = TextEditingController();
final TextEditingController quantidadeController = TextEditingController();
final TextEditingController categoriaController = TextEditingController();
final TextEditingController codigoController = TextEditingController();

class MinhaTela extends StatelessWidget {
  void calcularTotal() {
    double preco = double.tryParse(precoController.text) ?? 0;
    int quantidade = int.tryParse(quantidadeController.text) ?? 0;

    double total = preco * quantidade;

    print("O total é: R\$ ${total.toStringAsFixed(2)}");
  }

  void limpar() {
    nomeController.clear();
    precoController.clear();
    quantidadeController.clear();
    categoriaController.clear();
    codigoController.clear();

    print("Campos limpos!");
  }

  void salvar() {
    String nome = nomeController.text;
    String preco = precoController.text;
    String quantidade = quantidadeController.text;
    String categoria = categoriaController.text;
    String codigo = codigoController.text;

    print("Produto salvo!");
    print("Nome: $nome");
    print("Preço: $preco");
    print("Quantidade: $quantidade");
    print("Categoria: $categoria");
    print("Código de acesso: $codigo");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro de Produtos")),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            meuTextField("Nome do Produto", Icons.shopping_bag, nomeController),
            meuTextField("Preço", Icons.attach_money, precoController),
            meuTextField(
              "Quantidade em Estoque",
              Icons.inventory,
              quantidadeController,
            ),
            meuTextField("Categoria", Icons.category, categoriaController),
            meuTextField(
              "Código de Acesso",
              Icons.lock,
              codigoController,
              senha: true,
            ),
            meuBotao(
              "Calcular Total",
              const Color.fromARGB(255, 192, 245, 105),
              calcularTotal,
            ),
            meuBotao("Limpar", Colors.orange, limpar),
            meuBotao("Salvar", Colors.blue, salvar),
          ],
        ),
      ),
    );
  }
}
