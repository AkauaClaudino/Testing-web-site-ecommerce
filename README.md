

## Automação de um site de e-commerce, utilizando a linguagem Ruby e os frameworks Cucumber e Capybara
<h5> BDD para elaborar os cenários, Page objects para encapsular e facilitar a manutenção do código e a gem Faker para criar os dados de cadastro de um novo cliente </h5>


<h6>Site usado para realizar a automação web: http://automationpractice.com/index.php </h6>


### Objetivo do teste
<h6>Projeto simples com propósito de treinar os conhecimentos adquiridos em automação web. Optei pela escrita em inglês para aprimorar a habilidade com a lingua.</h6>

#### Execução dos testes, gerando report em html
<h5>Pelo Chrome</h5>
cucumber -f pretty -f html -o report.html BROWSER=chrome

<h5>Pelo Firefox</h5>
cucumber -f pretty -f html -o report.html BROWSER=firefox



