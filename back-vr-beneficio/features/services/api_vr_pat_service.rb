module ApiVrPat
  include HTTParty
  base_uri BASE_URL['base_url']
  format :json
  headers 'Content-Type': 'application/json'
end
