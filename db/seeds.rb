# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# contact4 = Contact.new(first_name: "asjbdw", last_name: "nkw", email: "jwadk@adnw.com", phone_number: "3333333")
# contact4.save


Contact.all.each do |contact|
  if contact.middle_name == nil
    contact.middle_name = Faker::Name.first_name
  end
  if contact.bio == nil
    contact.bio = Faker::TwinPeaks.quote
  end

  contact.save
end
#where.bio nil works too

# 100.times do
#   contactfaker = Contact.new(
#     first_name: Faker::Name.first_name, 
#     middle_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#      email: "#{Faker::Name.first_name}#{Faker::Name.last_name}@gmail.com",
#      phone_number: Faker::PhoneNumber.phone_number,
#      bio: Faker::TwinPeaks.quote)
#   contactfaker.save
# end

