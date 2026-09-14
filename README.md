# Mobile 10 — Reaproveitamento de Componentes em Flutter

> 🚧 **Projeto em desenvolvimento**

Projeto desenvolvido em aula para praticar o **reaproveitamento de componentes no Flutter**, evitando repetir estruturas de interface e deixando o código mais organizado e reutilizável.

A aplicação utiliza componentes personalizados para campos de texto e botões.

---

## Objetivo da aula

Praticar conceitos como:

- reutilização de widgets;
- criação de funções que retornam widgets;
- separação de componentes em arquivos;
- passagem de parâmetros;
- `TextField`;
- `ElevatedButton`;
- `VoidCallback`;
- organização da pasta `lib`;
- boas práticas de componentização.

---

## Tecnologias utilizadas

- Flutter
- Dart
- Material Design
- Git
- GitHub

---

## Estrutura principal

```text
reaproveitamento_componentes/
└── lib/
    ├── main.dart
    └── widgets/
        ├── botoes.dart
        └── campo_texto.dart
```

---

## Reaproveitamento de componentes

Ao invés de repetir o mesmo código várias vezes no `main.dart`, foram criados componentes reutilizáveis.

### Campo de texto

Arquivo:

```text
lib/widgets/campo_texto.dart
```

Função:

```dart
meuTextField()
```

Ela recebe parâmetros como:

```text
texto
icone
senha
```

Exemplo de uso:

```dart
meuTextField(
  "Código de Acesso",
  Icons.lock,
  senha: true,
)
```

O parâmetro `senha` permite ativar:

```dart
obscureText: true
```

para ocultar o conteúdo digitado.

---

## Botões reutilizáveis

Arquivo:

```text
lib/widgets/botoes.dart
```

Função:

```dart
meuBotao()
```

Ela recebe:

```text
texto
cor
funcao
```

Exemplo:

```dart
meuBotao(
  "Salvar",
  Colors.blue,
  enviar,
)
```

O callback é recebido através de:

```dart
VoidCallback
```

permitindo reutilizar o mesmo botão com diferentes ações.

---

## Interface atual

A tela possui campos para:

- Nome do Produto
- Preço
- Quantidade em Estoque
- Categoria
- Código de Acesso

Também possui os botões:

- Calcular Total
- Limpar
- Salvar

---

## Fluxo de reutilização

```text
main.dart
   ↓
widgets/
   ├── meuTextField()
   └── meuBotao()
   ↓
Interface Flutter
```

A ideia é evitar duplicação de código e manter cada componente com uma responsabilidade específica.

---

## Exemplo

Sem reaproveitamento:

```dart
TextField(...)
TextField(...)
TextField(...)
```

Com reaproveitamento:

```dart
meuTextField("Nome do Produto", Icons.person);
meuTextField("Preço", Icons.email);
meuTextField("Categoria", Icons.location_city);
```

O mesmo conceito é aplicado aos botões.

---

## Status do projeto

> 🚧 **Em desenvolvimento**

### Implementado

- estrutura inicial Flutter;
- organização da pasta `widgets`;
- componente reutilizável para `TextField`;
- componente reutilizável para `ElevatedButton`;
- passagem de texto, cor, ícone e função por parâmetro;
- campo opcional para senha;
- tela inicial com formulário;
- funções de ação para os botões.

### Ainda falta

- concluir a lógica das ações;
- finalizar o cálculo;
- implementar o botão de limpeza;
- implementar o salvamento;
- revisar a interface;
- realizar os testes finais.

---

## Como executar

Entre na pasta do projeto:

```bash
cd reaproveitamento_componentes
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

## Conceitos praticados

- Flutter
- Dart
- Widgets
- Componentização
- Reutilização de código
- `TextField`
- `ElevatedButton`
- `VoidCallback`
- Parâmetros opcionais
- Material Design
- Organização de arquivos
- Separação de responsabilidades

---

## Autor

**Luan Araujo**

Projeto acadêmico desenvolvido para prática de **Flutter, Dart e reaproveitamento de componentes**.
