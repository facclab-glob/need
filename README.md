<img src="projeto/NEED LOGO.png">

# Need V 1.0

### 1. Apresentação

#### Gerenciamento de Banco de Sangue com visão para voluntários

**Need** é um sistema webapp voltado para **Bancos de Sangue**, com o objetivo de **incentivar doações objetivas, de acordo com a necessidade de cada unidade**.  

No contexto da doação de sangue, existe um déficit de informações para os doadores na hora de se dirigirem à unidade, não havendo informações sobre quais tipos sanguíneos cada unidade mais necessita, podendo causar sobrecargas ou até mesmo escassez no estoque de bolsas de sangue.

A solução proposta é uma plataforma simples e objetiva, onde o administrador cadastra as unidades de saúde e suas respectivas **capacidades máximas de bolsas de sangue**. Fazendo assim com que os atendentes das unidades cadastradas possam alimentar o sistema de banco de sangue, registrando retiradas e depósitos, e após o processamento destes registros, os dados aparecerão de maneira intuitiva para que os doadores possam saber rapidamente qual a maior necessidade de cada unidade. O sistema é dividido em três partes: Uma para o administrador, outra pro atendente da unidade e a última para os doadores.


### 2. Especificação

#### Principais Funcionalidades

- CRUD das Unidades de Saúde
- Registros de estoque (bolsas de sangue)  
- Visualização simplificada de necessidades

#### Atores (usuários)

- Administrador
- Atendente
- Doador

|                |Administrador  |Atendente | Doador|
|--------------------------------------|---|---|---|
|Cadastrar, Alterar e Remover UNIDADES	| x |   |   |
|Cadastrar quantidade máxima de estoque	| x |   |   |
|Registrar retirada de bolsas de sangue	|   | x |   |
|Registrar depósito de bolsas de sangue |   | x |   |
|Visualizar necessidades                | x |   | x |
|Consultar unidades               	| x |   | x |


#### Tecnologias Envolvidas

- *Backend*: [PHP]
- *Frontend*: [HTML + CSS]
- *Banco*: [MySQL] (banco de dados relacional)

Outras ferramentas de apoio:

- Modelagem:
- Prototipação:
- Documentação:
- Teste:





### 3. Projeto

#### Principais Entidades de Negócio

Todos os usuários (Administrador, Atendente e Doador) concentram os atributos de identificação como id, nome, e-mail e senha, e especificam seu tipo de usuário. Além disso, a cada unidade é atribuido id, nome, endereço, telefone e capacidade máxima.

A figura 1 apresenta o Diagrama de Classes desse modelo, e a figura 2 o D-ER entre Atendente, Administrador e Unidade em relação ao estoque.

![]()
<img src="projeto/Diagrama de Classe.png">
> Figura 1 - Diagrama de Classes.

![]()
<img src="projeto/Diagrama de Entidade e Relacionamento.png">
> Figura 2 - Diagrama Entidade Relacionamento entre Atendente, Administrador e Unidade em relação ao estoque.

O Diagrama de Estados (figura 3) representa o ciclo de vida de uma UNIDADE no sistema, tendo como base a condição atual da mesma, podendo ser ativa, suspensa, desativada ou removida do sistema.

![]()
<img src="projeto/Diagrama de Estados.png">
> Figura 3 - Diagrama de Estados de uma Unidade em relação ao sistema.

O Diagrama de Atividade (figura 4) representa as operações possíveis que o Administrador pode realizar no sistema.

![]()
<img src="projeto/Diagrama de Atividade.png">
> Figura 4 - Diagrama de Atividade do Administrador no sistema.

### 4. Representação

#### Banco de dados

Elaboramos uma ilustração com dados fictícios que mostram de maneira sucinta como funcionará o sistema.

![]()
<img src="projeto/Ilustração do banco de dados.png">
> Figura 5 - Ilustração do Banco de Dados.
