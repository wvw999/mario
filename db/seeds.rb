Product.destroy_all
Review.destroy_all
User.destroy_all

25.times do |index|
  User.create(username: Faker::Name.name_with_middle,
    password: "password",
  admin: true)
end

50.times do |index|
  # pick_item = [Faker::Food.ingredient, Faker::Food.spice, Faker::Food.fruits, Faker::Food.vegetables, Faker::Dog.breed]
  # pick_desc = [Faker::Food.description, Faker::Vehicle.standard_specs]
  Product.create!(name: Faker::Food.ingredient,
                description: Faker::Food.description,
                price: Faker::Commerce.price(range = 0..10.0, as_string = true),
                country_origin: Faker::Address.country,
                user_id: User.all.ids.sample)
end

Product.all.each do |product|
  # pick = [Faker::TwinPeaks.quote, Faker::Dune.quote, Faker::BojackHorseman.quote, Faker::GreekPhilosophers.quote, Faker::BackToTheFuture.quote, Faker::PrincessBride.quote]
  5.times do |index|
    product.reviews.create!(review: Faker::TwinPeaks.quote,
                          user_id: User.all.ids.sample)
  end
end
