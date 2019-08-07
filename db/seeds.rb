Restaurant.destroy_all

10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
  3.times do
    review = Review.new(
      content: Faker::Restaurant.review,
      rating: [0, 1, 2, 3, 4, 5].sample
    )
    review.restaurant = restaurant
    review.save!
  end
end
