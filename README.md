# back-vr-beneficios
Backend:
Temos um endpoint de consulta exposto no nosso portal (https://portal.vr.com.br/api-web/
comum/enumerations/VRPAT) que nos retorna uma série de informações sobre nossos
produtos e estabelecimentos.
Crie um cenário, utilizando Cucumber + Ruby + HTTParty, que valide que o JSON retornado
pelo serviço possui a chave “typeOfEstablishment” e print, aleatoriamente, um desses tipos
de estabelecimentos.

# Validações de cada Etapa:
## Status Code  - A automação valida o status code, depois de cada batida no serviço
    - Valida se está retornando algum serviço
    - Valida status code == 200
    
# Os testes estão rodando nos ambientes:
    - QA
    - TI
    - PROD

## Options
* `AMB` - Em qual ambiente o teste deve ser executado
    * `ti` <- default 

## Comando para executar testes exemplos:
    - cucumber AMB=ti
