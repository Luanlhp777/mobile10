# 📱 Mobile 10 - Reaproveitamento de Componentes no Flutter

Projeto desenvolvido durante as aulas de **Desenvolvimento Mobile**, com foco no reaproveitamento de componentes utilizando **Flutter e Dart**.

O projeto apresenta uma tela de cadastro de produtos construída com componentes reutilizáveis para campos de texto e botões, evitando repetição de código e deixando a aplicação mais organizada.

---

## 🎯 Objetivo

Praticar a criação e reutilização de componentes no Flutter.

Durante o desenvolvimento foram trabalhados conceitos como:

- criação de componentes reutilizáveis;
- organização de widgets em arquivos separados;
- utilização de `TextEditingController`;
- passagem de parâmetros para componentes;
- utilização de funções como callback;
- leitura dos valores digitados em `TextField`;
- conversão de dados com `double.tryParse()` e `int.tryParse()`;
- cálculo utilizando valores informados pelo usuário;
- limpeza dos campos;
- campo de senha com `obscureText`;
- organização básica de um projeto Flutter.

---

## 🛒 Cadastro de Produtos

A aplicação possui uma tela para cadastro de produtos contendo os seguintes campos:

- Nome do produto;
- Preço;
- Quantidade em estoque;
- Categoria;
- Código de acesso.

O campo **Código de acesso** utiliza:

```dart
obscureText: senha
```

permitindo reutilizar o mesmo componente de campo de texto e ativar o comportamento de senha somente quando necessário.

---

## 🧩 Reaproveitamento de Componentes

Um dos principais objetivos do projeto foi evitar a repetição de código.

Foram criados componentes separados para os campos de texto e botões.

### Campo de texto reutilizável

O componente recebe informações como:

```dart
meuTextField(
  "Nome do Produto",
  Icons.shopping_bag,
  nomeController,
)
```

O mesmo componente pode ser utilizado para todos os campos da aplicação.

### Botão reutilizável

Também foi criado um componente para os botões:

```dart
meuBotao(
  "Calcular Total",
  const Color.fromARGB(255, 192, 245, 105),
  calcularTotal,
)
```

O componente recebe:

- texto;
- cor;
- função executada ao clicar.

Dessa forma, o mesmo widget pode ser utilizado para diferentes ações.

---

## 🎮 TextEditingController

Para acessar os valores digitados nos campos foram utilizados objetos `TextEditingController`.

Exemplo:

```dart
final TextEditingController precoController =
    TextEditingController();
```

O valor digitado pode ser acessado através de:

```dart
precoController.text
```

Os controllers também permitem limpar os campos utilizando:

```dart
precoController.clear();
```

---

## 🧮 Calcular Total

O botão **Calcular Total** utiliza o preço do produto e a quantidade disponível em estoque.

A fórmula utilizada é:

```text
Total = Preço × Quantidade
```

No código:

```dart
double preco =
    double.tryParse(precoController.text) ?? 0;

int quantidade =
    int.tryParse(quantidadeController.text) ?? 0;

double total = preco * quantidade;
```

Exemplo:

```text
Preço: R$ 25,00
Quantidade: 4

Total: R$ 100,00
```

---

## 🧹 Limpar Campos

O botão **Limpar** utiliza os controllers para apagar os valores digitados.

Exemplo:

```dart
void limpar() {
  nomeController.clear();
  precoController.clear();
  quantidadeController.clear();
  categoriaController.clear();
  codigoController.clear();
}
```

---

## 💾 Salvar Produto

O botão **Salvar** realiza a leitura das informações preenchidas no formulário.

São recuperados os valores de:

```text
Nome
Preço
Quantidade
Categoria
Código de acesso
```

Nesta etapa do projeto, os dados são utilizados para demonstrar a captura das informações digitadas pelo usuário.

---

## 📂 Estrutura do Projeto

A aplicação foi organizada separando os componentes reutilizáveis da tela principal.

```text
reaproveitamento_componentes/
│
├── lib/
│   ├── main.dart
│   │
│   └── widgets/
│       ├── botoes.dart
│       └── campo_texto.dart
│
├── android/
├── ios/
├── web/
├── windows/
├── linux/
├── macos/
│
├── pubspec.yaml
└── pubspec.lock
```

### `main.dart`

Responsável pela tela principal, controllers e funções da aplicação.

### `widgets/campo_texto.dart`

Componente reutilizável responsável pelos campos `TextField`.

### `widgets/botoes.dart`

Componente reutilizável responsável pelos botões da aplicação.

---

## 🧠 Conceitos praticados

Neste projeto foram praticados:

```text
Flutter
├── StatelessWidget
├── Scaffold
├── AppBar
├── Column
├── Padding
├── TextField
│   └── TextEditingController
├── InputDecoration
├── ElevatedButton
├── Callbacks
└── Componentes reutilizáveis

Dart
├── Funções
├── Parâmetros
├── String
├── int
├── double
├── int.tryParse()
├── double.tryParse()
└── Interpolação de Strings
```

---

## 🚀 Evolução do projeto

### Aula inicial

- Criação do projeto Flutter;
- Criação da tela de cadastro;
- Estudo sobre reaproveitamento de componentes;
- Separação dos componentes em arquivos.

### Evolução do exercício

- Implementação de `TextEditingController`;
- Integração dos controllers com componentes reutilizáveis;
- Implementação do cálculo de preço × quantidade;
- Implementação do botão Limpar;
- Implementação do botão Salvar;
- Utilização de campo de senha;
- Melhoria da organização e reutilização do código.

---

## 🛠️ Tecnologias

- Flutter
- Dart
- Material Design
- Git
- GitHub

---

## ▶️ Executando o projeto

Clone o repositório:

```bash
git clone https://github.com/Luanlhp777/mobile10.git
```

Entre no projeto Flutter:

```bash
cd mobile10/reaproveitamento_componentes
```

Instale as dependências:

```bash
flutter pub get
```

Execute:

```bash
flutter run
```

---

## 📚 Contexto acadêmico

Projeto desenvolvido para fins de estudo durante a disciplina de **Desenvolvimento Mobile**, praticando conceitos fundamentais de Flutter e Dart.

O foco desta atividade foi compreender como o reaproveitamento de componentes reduz a duplicação de código e facilita a manutenção da aplicação.

---

## 👨‍💻 Autor

**Luan Araujo**

Estudante de Desenvolvimento de Sistemas.

GitHub: `Luanlhp777`
