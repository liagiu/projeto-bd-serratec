# Projeto Final Banco de Dados 

### Projeto final da disciplina de Banco de Dados da residência de TIC/Software do Serratec 2021.2
<p align="center">Turma 07 - Grupo 2</p>
<p>
  Data de entrega: 20/09/2021
  <br>
  Para os alunos entregarem:
</p>
<ul>
  <li>Diagrama ER (primeira versão) - imagem</li>
  <li>Diagrama ER (depois da normalização) - imagem</li>
  <li>
    Arquivo com os comandos:
    <ul>
      <li>SQL de criação das tabelas (DDL)</li>
      <li>SQL de inserção de dados nas tabelas (pelo menos 5 registros em cada uma) (DML)</li>
      <li>Um comando SQL de atualização em algum registro em uma tabela (DML)</li>
      <li>Um comando SQL de exclusão de algum registro em uma tabela (DML)</li>
      <li>5 SQLs de consulta:
        <ul>
          <li>Pelo menos 2 com algum tipo de junção</li>
          <li>Pelo menos 1 com usando count() e group by()</li>
          <li>SQL para construção de nota fiscal</li>
        </ul>
      </li>
    </ul>
  </li>
</ul>

### Descrição do Projeto
<p>
Opção 1: E-commerce tradicional

Uma empresa do comércio varejista deseja realizar a venda de seus produtos pela internet e para isso precisa de um sistema capaz de realizar o controle de estoque e cadastro de clientes. A empresa é responsável pela produção de seus próprios produtos e por isso não precisa registrar dados de fornecedores externos. O sistema não tem como objetivo registrar detalhes da produção. Sendo assim, a seguir são descritos os requisitos e os dados que a empresa julga serem necessários para o funcionamento do sistema:
</p>
<ol>
  <li>O sistema deve ser capaz de armazenar informações sobre os produtos da empresa, sendo eles: código, nome, descrição, quantidade em estoque, data de fabricação e valor unitário.
  <li>Ao cadastrar um produto no sistema, os funcionários da empresa devem ser capazes de associá-lo à uma categoria. Cada produto só poderá pertencer à uma categoria.</li>
  <li>Se o produto já estiver cadastrado no sistema, o colaborador deverá apenas atualizar a quantidade de itens no estoque.</li>
  <li>Para cada categoria de produto, é necessário registrar: código, nome e descrição.</li>
  <li>O sistema deverá armazenar dados dos clientes, que devem ser: código, nome completo, nome de usuário, e-mail, cpf, data de nascimento e endereço.</li>
  <li>Através do sistema, os clientes podem realizar pedidos.</li>
  <li>Cada pedido deve conter um ou mais produtos, a data em que foi realizado e por quem foi realizado.</li>
  <li>Um pedido pode ter mais de um item de um mesmo produto, de acordo com a quantidade disponível em estoque.</li>
  <li>Sobre os funcionários, é necessário guardar apenas um código, nome e cpf.</li>
</ol>
