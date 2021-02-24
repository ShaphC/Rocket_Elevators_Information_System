json.extract! lead, :id, :full_name_of_the_contact, :company_name, :e-mail, :phone, :project_name, :Project_description, :department_in_charge_of_the_elevators, :message, :attached_file, :date_of_the_contact, :created_at, :updated_at
json.url lead_url(lead, format: :json)
