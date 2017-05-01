json.extract! tipo_conta, :id, :codigo, :nome, :descricao, :created_at, :updated_at
json.url tipo_conta_url(tipo_conta, format: :json)
