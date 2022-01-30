json.extract! prospect, :id, :name, :email, :group, :group_name, :cpf, :phone, :birth_date, :address, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)
