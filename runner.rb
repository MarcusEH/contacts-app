require 'unirest'

require 'awesome_print'

#index
response = Unirest.get('localhost:3000/api/contacts')

ap response.body