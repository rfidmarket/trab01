# TRABALHO 01:  EasyMarket
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Juliana Duarte Arcebi: juliana.acerbi@hotmail.com<br>
Nilzilane Ramos Ricardo Garcia Tosta: naniramosricardo@hotmail.com<br>
Rafaela Amorim Pessin: rafaelapessin@outlook.com<br>
Rebeca Borlini Encarnação: rebecaborlini@gmail.com<br><br>

Grupo de Análise:<br>
Antônio Carlos Durães da Silva: garotoseis@gmail.com<br>
Jennifer de Castro Gonçalves: jenny_cg23@hotmail.com<br>
Joel Will Belmiro: joel-willb@hotmail.com<br>
Larissa Santos da Motta: larissasantosdamotta@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

<p align = "justify"> Easy Market é um sistema para grandes estoques que facilita o controle do fluxo de mercadorias gerenciando desde quantidade, validade, preço, localização desses no interior do estabelecimento até sua chegada ao cliente. Por utilizar etiquetas RFID para acelerar o processo de pagamento de compras o sistema extingue a necessidade de operadores de caixa. Com a economia gerada pela menor necessidade de contratação de funcionários, esperamos minimizar o impacto dos altos preços das etiquetas sobre os preço dos produtos comercializados.</p>

### 3.MINI-MUNDO<br>

<p align = "justify"> Devido à pressa do cotidiano aliada às imensas filas que se formam nos caixas dos supermercados, ir às compras tornou-se algo exaustivo. Baseado neste problema, com o sistema EasyMarket, ao invés de utilizar o trabalho manual de caixas para leitura de códigos de barra de produtos em supermercados, os clientes terão seus produtos lidos de forma automática através de sensores na saída do supermercado, todos de uma só vez, ainda no carrinho, gerando uma fatura a ser paga. Isso porque os produtos serão identificados por etiquetas RFID (identificação por radiofreqüência). Uma antena estará conectada a um leitor, sendo responsável por enviar e receber sinais de rádio com as informações que estão nessas etiquetas. O leitor então vai converter as ondas de rádio em informações digitais que serão repassadas ao computador. </p>
<p align = "justify"> Primeiramente, para entrar no sistema EasyMarket para supermercados é solicitado um login e senha. É permitido o acesso de gerentes, almoxarifado, funcionários que fazem a reposição de mercadorias, entre outros setores, e as permissões de acesso  dependem de cada setor. O sistema permite o cadastro de produtos com todas as informações necessárias (tipo, validade, preço de compra, código, descrição, quantidade na prateleira, quantidade total, data de compra, fornecedor, situação,venda, em estoque) e conta com uma opção para remover produtos vendidos. O sistema também permite o cadastro de usuários (nome, cargo, setor, CPF, login, senha), a geração de relatórios, o controle de estoque e pesquisa de produtos. </p>
<p align = "justify"> Para facilitar o pagamento para o cliente proporcionando maior comodidade e auxiliar em maior controle por parte dos supermercados, foi criado o EasyMarket Mobile. O cliente, portando um aparelho celular ou tablet, realiza seu cadastro no aplicativo ondevai selecionar a forma de pagamento (débito ou crédito), podendo inserir um ou mais cartões e selecionar o desejado para o ato da compra. Com isso, poderá validar seu cadastro na entrada da loja através de um QRCode, liberando sua entrada para efetuar as compras. A partir daí, ele poderá visualizar todo o histórico de compras (local, data, horário, valor, detalhes da compra) pelo aplicativo, tendo a opção de gerar uma nota fiscal eletrônica. Com isso, o mercado poderá ter o controle de pagamentos já que, quando cadastrados, ao efetuar uma compra é realizado débito automático na conta do cliente. </p>
<p align = "justify">As etiquetas RFID vão automatizar o processo de pagamento, reduzindo em grande parte as filas com o intuito de tornar o processo de compra mais agradável e menos moroso para o cliente. Além disso, é possível fazer o controle do estoque de mercadorias de forma eficiente e precisa, evitando erros e dispensando balanços mensais manuais e demorados. </p>

<b> REGRAS DE NEGÓCIO </b>

<p align = "justify"> RN01: O preço de um produto é o resultado da expressão: valor da compra + impostos + porcentagem sobre o custo do negócio + valor da etiqueta RFID + porcentagem de lucro. </p>
<p align = "justify"> RN02: Um produto não deve ser colocado à venda caso esteja vencido. </p>
<p align = "justify"> RN03: Cobrança de taxa de entrega. </p>
<p align = "justify"> RN04: Entregas somente em endereços situados a um raio de 4km do estabelecimento. </p>
<p align = "justify"> RN05: Cada cliente deve ter somente uma conta. Para evitar duplicidade, o número de CPF deve ser obrigatório no cadastro. </p>

### 4. MOCKUPS<br>

<a href="https://github.com/rfidmarket/trab01/raw/master/Easy%20Market.pdf">EasyMarket Desktop</a><br>
<a href="https://github.com/rfidmarket/trab01/blob/master/EasyMarketMobile.pdf">EasyMarket Mobile</a><br>

#### 4.1 TABELA DE DADOS DO SISTEMA:

<a href="https://github.com/rfidmarket/trab01/blob/master/arquivos/Tabela%20de%20dados%20-%20BD.xlsx">Tabela</a><br>

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 10 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
É de grande relevância para o estabelecimento ter os seguintes relatórios acessíveis:
* Quais são os produtos com a data mais próxima do vencimento?<br>
-Inclui informações como: Nome do produto e data de validade.<br>

* Quais são os produtos mais vendidos?<br>
-Inclui informações como: Nome do produto, Número de vendas e Data de intervalo  (produtos mais vendidos nos últimos 15 dias, por exemplo).<br>

* Quais são os clientes que mais consumiram?<br>
-Inclui informações como: Nome do cliente, Número indicando valor gasto e Data de intervalo.<br>

* Qual é a média de consumo por cliente?<br>
-Inclui informações como: Número indicando valor gasto e Data de intervalo.<br>

* Qual é o dia da semana mais lucrativo?<br>
-Inclui informações como: Dia da semana, Data de intervalo e Soma de ganhos nesse dia da semana.<br>
-Exemplo: Nos últimos 30 dias foram vendidos R$65000 nas quartas-feiras (dia mais lucrativo).<br>

* Qual é o tipo de produto mais comprado (maior número de unidades vendidas) em cada dia da semana?<br>
-Exemplo: Nos últimos 30 dias, nas quartas-feiras foram vendidos 10000 unidades de verduras; nas quintas-feiras, 20000 produtos de limpeza, ...<br>

* Quais são as datas do ano mais lucrativas?<br>
-Inclui informações como: Data, Dia da semana, Data de intervalo e Ganho nessa data.<br>
-Exemplo: Em 12/10 (Dia das crianças), sexta-feira, em 2018, foi vendido R$200 mil.<br>

* Qual o meio de pagamento mais utilizado?<br>
-Inclui informações como: Meio, Número de usuários e Data de intervalo.<br>
-Exemplo: Nos últimos 6 meses, PayPal foi mais usado, com 800 usuários.<br>

* Qual o meio de pagamento mais lucrativo?<br>
-Inclui informações como: Meio, Ganhos e Data de intervalo.<br>

>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/rfidmarket/trab01/blob/master/arquivos/modeloConceitual.png "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!
    
 TABELA: CARTÃO

Campo numero: o campo numero é a chave primária por isso, é um atributo determinante por não haver dados repitidos.
Campo tipo: o campo tipo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo bandeira: o campo tipo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo autenticacao: o campo tipo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo nome_titular: o campo tipo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo validade: o campo tipo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.

TABELA: PESSOA
Campo cpf: o campo cpf é a chave primária por isso, é um atributo determinante por não haver dados repitidos.
Campo data_nasc: o campo tipo é um atributo simples, portanto não possui uma característica especial e recebe um valor único
Campo login: é um atributo determinante,pois não haverá logins repetidos. //REVER
Campo senha: o campo tipo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo nome: o campo tipo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.

TABELA: ENDEREÇO
Campo id: o campo id é a chave primária por isso e será usado como um identificador, é um atributo determinante por não haver dados repitidos.
Campo estado: o campo estado é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo cidade: o campo cidade é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo bairro: o campo bairro é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo rua: o campo rua é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo numero: o campo numero é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo cep: o campo cep é um atributo simples, portanto não possui uma característica especial e recebe um valor único.

TABELA: FORNECEDOR
Campo id: o campo id é a chave primária por isso e será usado como um identificador, é um atributo determinante por não haver dados repitidos.
Campo cnpj: o campo cnpj é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo nome: o campo nome é um atributo simples, portanto não possui uma característica especial e recebe um valor único.

TABELA: CONTATO
Campo id: o campo id é a chave primária por isso e será usado como um identificador, é um atributo determinante por não haver dados .repitidos.
campo e-mail: o campo e-mail é um atributo multivalorado, poi é possível a pessoa possuir mais de um e-mail.
campo celular: o campo celular é um atributo multivalorado, poi é possível a pessoa possuir mais de um número de celular.
campo telefone: o campo telefone é um atributo multivalorado, poi é possível a pessoa possuir mais de um telefone.

TABELA: FUNCIONÁRIO
Campo cpf: o campo cpf é a chave primária por isso, é um atributo determinante por não haver dados repitidos.
Campo cargo: o campo cargo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo setor: o campo setor é um atributo simples, portanto não possui uma característica especial e recebe um valor único.

TABELA: SUPERMERCADO
Campo id: o campo id é a chave primária por isso e será usado como um identificador, é um atributo determinante por não haver dados repitidos.
Campo nome: o campo nome é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo unidade: o campo unidade é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo latitude: o campo latitude é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo longitude: o campo longitude é um atributo simples, portanto não possui uma característica especial e recebe um valor único.

TABELA: COMPRA
Campo id: o campo id é a chave primária por isso e será usado como um identificador, é um atributo determinante por não haver dados repitidos.
Campo preco_compra: o campo preco_compra é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo quant: o campo quant é um atributo simples, portanto não possui uma característica especial e recebe um valor único.

TABELA: HIST_COMPRA
Campo id: o campo id é a chave primária por isso e será usado como um identificador, é um atributo determinante por não haver dados repitidos.
Campo timestamp: o campo timestamp é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo valor: o campo valor é um atributo simples, portanto não possui uma característica especial e recebe um valor único que será obtido através de um cálculo.

TABELA: PRODUTO
Campo id: o campo id é a chave primária por isso e será usado como um identificador, é um atributo determinante por não haver dados repitidos.
Campo quant_dispon: o campo quant_dipon é um atributo simples, portanto não possui uma característica especial e recebe um valor único que será obtido através de um cálculo.
Campo descricao: o campo descricao é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo marca: o campo marca é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo codigo: o campo codigo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo estoque: o campo estoque é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo nome: o campo nome é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo tipo: o campo tipo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo custo: o campo custo é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo preco: o campo preco é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo quant_prateleira: o campo quant_prateleira é um atributo simples, portanto não possui uma característica especial e recebe um valor único.


TABELA: LOTE
Campo id: o campo id é a chave primária por isso e será usado como um identificador, é um atributo determinante por não haver dados repitidos.
Campo data_compra: o campo data_compra é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo numero: o campo numero é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo fabricacao: o campo fabricacao é um atributo simples, portanto não possui uma característica especial e recebe um valor único
Campo quantidade: o campo quantidade é um atributo simples, portanto não possui uma característica especial e recebe um valor único.
Campo validade: o campo validade é um atributo simples, portanto não possui uma característica especial e recebe um valor único.



>## Marco de Entrega 02 em: (23/04/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
>## Marco de Entrega 03 em: (14/05/2018)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

>## Marco de Entrega 04 em: (04/06/2017)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (25/06/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


