  # json.id @contact.id
  # json.first_name @contact.first_name
  # json.last_name @contact.last_name
  # json.email @contact.email
  # json.phone_number @contact.phone_number
  # json.created_at @contact.created_at
  # json.updated_at @contact.updated_at
  # json.phone_number @contact.prefix_japan
json.partial! 'contact.json.jbuilder', contact: @contact

#you technically don't need the .json.jbuilder for a partial. Rails knows to look for that and assumes that's the extension.