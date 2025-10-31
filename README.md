
# EdPro — Plataforma de Cursos (LMS Corporativo)


## Visão geral

EdPro é um protótipo de Learning Management System (LMS) pensado para uso corporativo. O objetivo é permitir que uma empresa crie, publique e acompanhe trilhas de aprendizado internas sem depender de plataformas externas.

Principais áreas:
- Painel do Admin / Instrutor: gestão completa de cursos, módulos, lições e alunos.
- Portal do Aluno (Funcionário): acesso aos cursos, consumo de conteúdo e acompanhamento de progresso.
- Backend: API REST em Node.js com Prisma + PostgreSQL.

## Escopo mínimo entregue

- Front-end (descrição das telas):
	- Tela de Login (Admin/Instrutor)
	- Dashboard (CRUD Cursos: criar, listar, editar, publicar)
	- Editor de Curso (CRUD Módulos e Lições; upload/links de vídeo, texto)
	- Gestão de Alunos (matrículas)
	- Tela de Login (Aluno)
	- Meus Cursos (lista + % de progresso)
	- Player do Curso (consumo de conteúdo, navegação e marcação de lição concluída)

- Back-end:
	- Node.js + Prisma (ORM)
	- PostgreSQL
	- API REST com CRUD para Users, Courses, Modules, Lessons, UserProgress
	- Validações de dados obrigatórias

- Dados de exemplo:
	- Pelo menos 5 cursos
	- Pelo menos 100 lições no sistema
	- Pelo menos 20 registros de progresso de usuários

## Requisitos Funcionais (resumido)

1. Admin pode criar/editar/deletar/publicar cursos.
2. Admin pode adicionar/editar/deletar módulos e lições dentro de um curso.
3. Admin pode matricular usuários em cursos.
4. Aluno pode ver seus cursos e acessar o player do curso.
5. Aluno pode marcar lições como concluídas.
6. O sistema calcula a porcentagem de progresso do aluno por curso = (lições concluídas / total de lições do curso) * 100.
7. API deve expor endpoints para todas as operações CRUD e operações de progresso.

## Requisitos Não-Funcionais

- Segurança: autenticação básica (JWT). Rota de admin protegida.
- Performance: paginação nas listagens (courses, lessons) quando necessário.
- Escalabilidade: arquitetura em camadas (controllers, services, repositories).
- Observabilidade: logs básicos e mensagens de erro claras.

## Casos de Uso (exemplos)

- Admin Cria Curso: Admin envia POST /courses com título, descrição e tags. Backend valida e cria o curso no DB.
- Admin Adiciona Módulo: Admin envia POST /courses/:courseId/modules.
- Admin Adiciona Lição: Admin envia POST /modules/:moduleId/lessons (conteúdo: tipo video/texto, url/conteúdo).
- Aluno Assiste Aula: Aluno acessa GET /courses/:id/player e consome a lição.
- Aluno Conclui Lição: Aluno envia POST /userprogress com userId, lessonId, status=completed.

## Modelo de Dados (tabelas principais)

Resumo das tabelas e campos essenciais (sugestão):

- users
	- id (uuid)
	- name
	- email (unique)
	- password_hash
	- role ("admin" | "instructor" | "student")
	- created_at

- courses
	- id (uuid)
	- title
	- description
	- published (boolean)
	- created_by (user id)
	- created_at

- modules
	- id (uuid)
	- course_id (fk)
	- title
	- position (int)
	- created_at

- lessons
	- id (uuid)
	- module_id (fk)
	- title
	- content_type ("video" | "text")
	- content (text or url)
	- duration_seconds (opcional)
	- position (int)
	- created_at

- user_progress
	- id (uuid)
	- user_id (fk)
	- lesson_id (fk)
	- status ("in_progress" | "completed")
	- completed_at (nullable)
	- created_at

DER (sintético):
- users 1..* courses (created_by)
- courses 1..* modules
- modules 1..* lessons
- users *..* lessons via user_progress

OBS: Para uma documentação mais formal do DER, é recomendável exportar um diagrama do seu editor ER (MySQL Workbench, draw.io, Figma etc.).

## Regras de Validação (backend)

- Users: email obrigatório e único; password mínimo 8 caracteres; role obrigatório.
- Courses: title obrigatório (min 3 chars); description opcional.
- Modules: title obrigatório; position >= 0.
- Lessons: title obrigatório; content_type deve ser "video" ou "text"; se video, content deve ser URL válida; position >= 0.
- UserProgress: user_id e lesson_id obrigatórios; status em enum permitido.

## Cálculo de Progresso

Por curso, para um usuário:

$$
progress\% = \left\lfloor 100 * \frac{N_{concluidas}}{N_{total\_licoes}} \right\rfloor
$$

Onde N_concluidas = número de lições com status = "completed" pelo usuário no curso, e N_total_licoes = total de lições desse curso.

## API — visão geral (endpoints principais)

Autenticação: POST /auth/login -> { email, password } -> { token }

Users
- GET /users
- POST /users
- GET /users/:id
- PUT /users/:id
- DELETE /users/:id

Courses
- GET /courses
- POST /courses
- GET /courses/:id
- PUT /courses/:id
- DELETE /courses/:id
- POST /courses/:id/publish

Modules
- GET /courses/:courseId/modules
- POST /courses/:courseId/modules
- PUT /modules/:id
- DELETE /modules/:id

Lessons
- GET /modules/:moduleId/lessons
- POST /modules/:moduleId/lessons
- GET /lessons/:id
- PUT /lessons/:id
- DELETE /lessons/:id

User Progress
- GET /users/:userId/progress
- POST /userprogress  (body { userId, lessonId, status })
- PUT /userprogress/:id

Observação: Todas as rotas de escrita devem validar JWT e o papel (role) do usuário conforme regra (somente admin/instructor para CRUD de cursos).

## Postman

- Gere e publique uma coleção Postman contendo todas as rotas acima e exemplos de payloads.
- Incluir ambiente Postman com variáveis: base_url, auth_token.

## Seed de dados (mínimos exigidos)

O projeto deve incluir um script de seed que popula o banco com:
- 5 cursos
- 100+ lições (distribuídas em módulos entre os cursos)
- 20+ registros na tabela user_progress

Exemplo (comandos para Windows - cmd.exe):

```batch
REM Instalar dependências
npm install

REM Criar banco e aplicar migrations (Prisma)
npx prisma migrate dev --name init

REM Rodar o seed script (implemente em prisma/seed.js ou scripts/seed.js)
npm run seed

REM Iniciar servidor em dev
npm run dev
```

Sugestão de scripts no package.json:

```json
{
	"scripts": {
		"dev": "nodemon src/index.js",
		"start": "node dist/index.js",
		"migrate": "npx prisma migrate dev",
		"seed": "node prisma/seed.js"
	}
}
```

## Setup local (resumo)

1. Instalar Node.js (>=16), npm
2. Instalar PostgreSQL e criar database (ex: edpro_dev)
3. Copiar `.env.example` para `.env` e ajustar DATABASE_URL
4. npm install
5. npx prisma migrate dev --name init
6. npm run seed
7. npm run dev

Exemplo de `.env` (local Windows):

```
DATABASE_URL="postgresql://usuario:senha@localhost:5432/edpro_dev?schema=public"
JWT_SECRET="sua_chave_secreta"
PORT=3000
```

## Testes e Qualidade

- Incluir testes básicos unitários/integrados (ex: Jest + Supertest) para endpoints críticos: auth, criação de curso, marcação de lição concluída.
- Verificar que as validações retornam códigos HTTP apropriados (400/401/403/404).

## Protótipo

- Um protótipo de baixa fidelidade (Figma) deve conter telas listadas em "Front-end". Disponibilize link do arquivo Figma no repositório (ex: docs/figma-link.txt) ou na seção de Issues.

## Entregáveis e Documentação final

- Código fonte do backend (Node.js + Prisma)
- Scripts de migração e seed (Prisma)
- Coleção Postman exportada (postman_collection.json)
- DER (PNG/SVG) em docs/erd.png
- Protótipo Figma (link) e telas principais
- README (este arquivo)

## Observações finais

Este README é um ponto de partida. Após implementar o backend e frontend, é importante atualizar as seções:
- Documentação da API com exemplos reais e esquema de resposta
- Exportação da coleção Postman
- DER atualizado pelo modeler usado
- Scripts de seed adaptados aos modelos exatos do Prisma

---

Se quiser, eu posso:
- gerar um arquivo `.env.example` pronto;
- criar um `prisma/schema.prisma` base;
- implementar um script de seed que cria 5 cursos e 100 lições automaticamente;
- ou gerar a coleção Postman inicial (JSON) com todos os endpoints.

Indique qual desses extras quer que eu gere agora.
