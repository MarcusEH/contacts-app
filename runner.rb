require 'unirest'

require 'awesome_print'

#index
# response = Unirest.get('localhost:3000/api/contacts')

# ap response.body

#show

# response = Unirest.get('localhost:3000/api/contacts/3')

# ap response.body

#create

# response = Unirest.post('localhost:3000/api/contacts/',
  # parameters: {
  #   input_first_name: "Mickey",
  #   input_last_name: "Mouseman",
  #   input_email: "mm@gmail.com",
  #   input_phone_number: "123-4567"
  # }
# )
# ap response.body

#update

# response = Unirest.patch('localhost:3000/api/contacts/5',
#   parameters: {
#     input_first_name: "Moe",
#     input_last_name: "Dude",
#     input_email: "megaman@gmail.com",
#     input_phone_number: "123-4567"
#   }
# )

# ap response.body

#delete

# response = Unirest.delete('localhost:3000/api/contacts/6')

# ap response.body