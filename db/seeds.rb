Product.destroy_all
Review.destroy_all
User.destroy_all

25.times do |index|
  User.create(username: Faker::Name.name_with_middle,
    password: "password",
  admin: true)
end

50.times do |index|
  pick_item = [Faker::Food.ingredient, Faker::Food.spice, Faker::Food.fruits, Faker::Food.vegetables, Faker::Dog.breed]
  pick_desc = [Faker::Food.description, Faker::Vehicle.standard_specs]
  pick_country = [Faker::Address.country, "USA"]
  Product.create!(name: pick_item.sample,
                description: pick_desc.sample,
                price: Faker::Commerce.price(range = 0..10.0, as_string = true),
                country_origin: pick_country.sample,
                user_id: User.all.ids.sample)
end

Product.all.each do |product|
  5.times do |index|
    product.reviews.create!(review: Faker::Lorem.paragraph_by_chars(249, false),
                          user_id: User.all.ids.sample)
  end
end
