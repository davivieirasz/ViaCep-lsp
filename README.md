## Consumo da API ViaCEP utilizando LSP (Linguagem Senior de Programação)

Este projeto demonstra como consumir a API pública do ViaCEP utilizando a linguagem de programação LSP da Senior Sistemas.

Esta rotina tem como objetivo realizar consultas de CEP utilizando a API do ViaCEP, permitindo a integração entre o ERP Senior e serviços externos através de requisições HTTP em LSP.

---

## Funcionalidades

- Entrada dinâmica de CEP pelo usuário
- Validação de CEP informado
- Consumo de API utilizando HTTP GET
- Conversão de codificação de caracteres
- Exibição do retorno JSON da API
- Tratamento de cancelamento da operação

---

## Tecnologias utilizadas

- Linguagem LSP (Senior Sistemas)
- API - ViaCEP

---

## Funcionamento da rotina

### 1. Solicita o CEP ao usuário

A função `EntradaValor` é utilizada para permitir que o usuário informe o CEP desejado.

---

### 2. Validação dos dados

A rotina verifica:

- Se o usuário cancelou a operação
- Se o CEP informado é válido

---

### 3. Montagem da URL da API

```lsp
aURL = "https://viacep.com.br/ws/" + aCEP + "/json/";
```

---

### 4. Consumo da API

A conexão HTTP é criada e executada utilizando funções nativas da LSP.

---

### 5. Retorno ao usuário

O JSON retornado pela API é exibido diretamente na tela.

```lsp
Mensagem(Retorna, aConvertido);
```

---

## Exemplo de retorno

```json
{
  "cep": "88840-000",
  "logradouro": "Rua Exemplo",
  "complemento": "",
  "bairro": "Centro",
  "localidade": "Urussanga",
  "uf": "SC",
  "ibge": "4216803"
}
```

---

## Objetivo do projeto

Este projeto foi desenvolvido com foco em:

- Estudos práticos de consumo de APIs em LSP
- Aprendizado de requisições HTTP no ERP Senior
- Evolução em integrações e automações ERP

---

## Autor

Desenvolvido por Davi Vieira.
