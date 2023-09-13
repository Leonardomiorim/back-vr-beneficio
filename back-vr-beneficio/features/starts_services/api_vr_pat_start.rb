class ApiVrPatStart < SitePrism::Page
  def listar_typeOfEstablishment
    $response = ApiVrPat.get("/VRPAT")
    raise "ERRO: Problema ao fazer GET na API:\nCodigo do erro: #{$response.code}\nDescrissão do erro: #{$response.body}" if $response.code != 200
    $response
  end

  def mapear_establishment
    $establishment = $response['typeOfEstablishment'][0]
    $establishment
  end

  def valida_key_establishment
    if $establishment["key"] == ""
      raise "campo em branco"
    else
      return "#{$establishment["key"]}"
    end
    # raise "ERRO: O campo Key está vazio:\nResultado: #{$establishment}" if $establishment["key"].blank? else print "#{$establishment["key"]}"
  end
end
