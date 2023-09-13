#language: pt
Funcionalidade: Validação de Campos typeOfEstablishment
  Sendo usuario com acesso a API VRPAT
  Posso listar estabelicimentos e etc...
  Para encontrar os benificios

  @KeytypeOf
  Cenario: Validar retorno do campo key de typeOfEstablishment
    Dado faço um GET na API VRPAT
    Quando mapeio os estabelecimentos
    Então valido se o campo esta vazio