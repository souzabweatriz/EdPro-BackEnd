# 🦉 EdPro — Plataforma de Cursos (LMS Corporativo)

EdPro é um protótipo de Learning Management System (LMS) pensado para uso corporativo. O objetivo é permitir que uma empresa crie, publique e acompanhe trilhas de aprendizado internas sem depender de plataformas externas. 

⚠️ **Importante:** Para utilizar toda a aplicação EdPro, lembre-se de rodar também o [frontend](https://github.com/souzabweatriz/EdPro-FrontEnd.git) localmente.

---

## 🚀 Pré-requisitos

Antes de começar, você precisa ter instalado na sua máquina:

- [Node.js](https://nodejs.org/) (v16+ recomendado)
- [npm](https://www.npmjs.com/) ou [yarn](https://yarnpkg.com/)
- [Git](https://git-scm.com/)
- [PostgreSQL](https://www.postgresql.org/)

---

# 📦 Clonando e Configurando o Backend

Siga os passos abaixo para rodar a API do EdPro localmente:

1. **Abrir o terminal/CMD**
    ```bash
    # Windows: Win + R → cmd
    # macOS: Cmd + Space → Terminal
    ```

2. **Navegar para o local onde deseja salvar o projeto (exemplo: Desktop):**
    ```bash
    cd Desktop
    ```

3. **Criar uma pasta para o projeto:**
    ```bash
    mkdir API-EdPro
    ```

4. **Entrar na pasta criada:**
    ```bash
    cd API-EdPro
    ```

5. **Clonar o repositório:**
    ```bash
    git clone https://github.com/souzabweatriz/EdPro-BackEnd.git .
    ```
    > O ponto ao final garante que os arquivos sejam clonados direto na pasta API-BookNest.

6. **Abrir o projeto no VS Code (opcional):**
    ```bash
    code .
    ```

7. **Instalar as dependências:**
    ```bash
    # Usando npm
    npm install

    # ou usando yarn
    yarn install
    ```

---

## 🗄️ Configuração do Banco de Dados

1. **Crie um banco PostgreSQL no seu computador**  
   Exemplo de nome sugerido: `edpro`.

2. **Configure as variáveis de ambiente**  
   Crie um arquivo `.env` na raiz do projeto com o seguinte conteúdo (edite conforme seu ambiente):

    ```
    PORT=4000
    DB_USER=seu_usuario_postgres
    DB_HOST=localhost
    DB_NAME=edpro
    DB_PASSWORD=sua_senha_postgres
    DB_PORT=porta_do_postgres
    ```

    Você pode usar o arquivo `.env.example` como base.

3. **Execute o script de criação das tabelas**  
   Rode o SQL localizado em `src/database/schema.sql` no seu banco PostgreSQL.

---

## ▶️ Rodando a API

Inicie o servidor de desenvolvimento:

```bash
# Usando npm
npm run dev

# ou usando yarn
yarn dev
```

A API estará disponível em:
👉 http://localhost:4000 ou em http://localhost:5000

> **Dica:** Mantenha o backend rodando em um terminal separado para garantir o funcionamento do frontend.

---

## 🎓 Endpoints Principais

### 👥 Usuários

- `GET /api/users` — Lista todos os usuários
- `GET /api/users/:id` — Busca um usuário pelo ID
- `POST /api/users` — Cria um novo usuário
- `PUT /api/users/:id` — Atualiza um usuário
- `DELETE /api/users/:id` — Remove um usuário

### 🏫 Cursos

- `GET /api/courses` — Lista todos os Cursos
- `GET /api/courses/:id` — Busca um curso pelo ID
- `POST /api/courses` — Cria um novo curso
- `PUT /api/courses/:id` — Atualiza um curso
- `DELETE /api/courses/:id` — Remove um curso

### 📝 Lições

- `GET /api/lessons` — Lista todos os lições
- `GET /api/lessons/:id` — Busca um lição pelo ID
- `POST /api/lessons` — Cria um novo lição
- `PUT /api/lessons/:id` — Atualiza um lição
- `DELETE /api/lessons/:id` — Remove um lição

### 🧑‍🎓 Matrícula

- `GET /api/enrollments` — Lista todos os matrículas
- `GET /api/enrollments/:id` — Busca um matrícula pelo ID
- `POST /api/enrollments` — Cria um novo matrícula
- `PUT /api/enrollments/:id` — Atualiza um matrícula
- `DELETE /api/enrollments/:id` — Remove um matrícula

---

## 🚨 Tratamento de Erros

As respostas de erro são retornadas no formato:

```json
{
  "message": "Descrição do erro."
}
```

Códigos de status comuns:
- `400` — Dados de entrada inválidos
- `404` — Recurso não encontrado
- `500` — Erro interno do servidor

---

## 🧪 Testando a API

Você pode testar a API usando o [Postman](https://www.postman.com/) ou ferramentas semelhantes.  
Coleção pronta para uso:  
[![Ver Documentação no Postman](https://img.shields.io/badge/Postman-API%20Docs-orange?logo=postman)](https://documenter.getpostman.com/view/42621906/2sB3WnwhMp)
  
[Documentação completa no Postman](https://documenter.getpostman.com/view/42621906/2sB3WnwhMp)

---

## 🛠️ Tecnologias utilizadas

- Node.js e Express – Backend e API REST
- PostgreSQL – Banco de dados relacional
- Dotenv – Gerenciamento de variáveis de ambiente

---

## 📁 Estrutura do Projeto

```bash
API-BookNest/
├── src/
│   ├── controllers/      # Lógica dos endpoints
│   ├── database/         # Configuração e scripts do banco
│   ├── models/           # Modelos das tabelas
│   ├── routes/           # Rotas da API
│   └── ...               # Outros arquivos
├── .env.example          # Exemplo de configuração ambiente
├── README.md
└── ...
```

---

## 📄 Licença

Este projeto está sob a licença MIT.
