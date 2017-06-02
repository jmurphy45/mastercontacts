json.extract! contact, :id, :first_name, :last_name, :company, :street1, :street2, :city, :state, :email, :business_phone, :mobile, :birth_date, :primary_class, :created_at, :updated_at
json.url contact_url(contact, format: :json)
