Dado('faço um GET na API VRPAT') do
  api_vrpat.listar_typeOfEstablishment
end

Quando('mapeio os estabelecimentos') do
  @establishment = api_vrpat.mapear_establishment
  log(@establishment)
end

Então('valido se o campo esta vazio') do
  @response = api_vrpat.valida_key_establishment
  log(@response)
end
