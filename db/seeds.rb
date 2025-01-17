Favourite.destroy_all
Review.destroy_all
Car.destroy_all
Owner.destroy_all

# Create 10 owners with nicknames
owners = [
  Owner.create!(nickname: "SpeedySam"),
  Owner.create!(nickname: "TurboTina"),
  Owner.create!(nickname: "NitroNick"),
  Owner.create!(nickname: "FlashFiona"),
  Owner.create!(nickname: "RocketRalph"),
  Owner.create!(nickname: "MightyMitch"),
  Owner.create!(nickname: "RacerRita"),
  Owner.create!(nickname: "FastFreddy"),
  Owner.create!(nickname: "LightningLori"),
  Owner.create!(nickname: "QuickQuinn")
]

# Create 1 car for each owner
cars = [
  Car.create!(brand: "Toyota", model: "Prius", year: 2020, fuel: "Hybrid", owner: owners[0]),
  Car.create!(brand: "Honda", model: "Civic", year: 2018, fuel: "Petrol", owner: owners[1]),
  Car.create!(brand: "Ford", model: "Mustang", year: 2022, fuel: "Petrol", owner: owners[2]),
  Car.create!(brand: "Tesla", model: "Model 3", year: 2021, fuel: "Electric", owner: owners[3]),
  Car.create!(brand: "Chevrolet", model: "Impala", year: 2019, fuel: "Diesel", owner: owners[4]),
  Car.create!(brand: "BMW", model: "X5", year: 2020, fuel: "Diesel", owner: owners[5]),
  Car.create!(brand: "Audi", model: "A4", year: 2017, fuel: "Petrol", owner: owners[6]),
  Car.create!(brand: "Nissan", model: "Altima", year: 2018, fuel: "Hybrid", owner: owners[7]),
  Car.create!(brand: "Mazda", model: "CX-5", year: 2021, fuel: "Petrol", owner: owners[8]),
  Car.create!(brand: "Hyundai", model: "Elantra", year: 2020, fuel: "Electric", owner: owners[9])
]

reviews = [
  { content: "An amazing car that drives like a dream!", rating: 5 },
  { content: "Good value for money, but the seats could be more comfortable.", rating: 3 },
  { content: "Absolutely love the fuel efficiency!", rating: 4 },
  { content: "Looks great, but had some issues with the engine.", rating: 2 },
  { content: "Perfect for city driving, compact yet spacious.", rating: 4 },
  { content: "This car is a beast on the highway. Highly recommend!", rating: 5 },
  { content: "Not what I expected, maintenance costs are high.", rating: 2 },
  { content: "Super quiet and eco-friendly. A great family car.", rating: 5 },
  { content: "Handles corners well but feels underpowered.", rating: 3 },
  { content: "A real head-turner, love the sleek design.", rating: 5 },
  { content: "Disappointing performance. Would not buy again.", rating: 1 },
  { content: "Reliable and sturdy, but a bit boring to drive.", rating: 3 },
  { content: "Best car I've owned! Fantastic in every way.", rating: 5 },
  { content: "Feels outdated compared to newer models.", rating: 3 },
  { content: "Incredible acceleration and premium feel.", rating: 5 }
]

# Create 3 reviews for each car
cars.each do |car|
  reviews.sample(rand(3..5)).each do |review_data|
    car.reviews.create!(review_data)
  end
end

# Fave Seed Method to randomly add cars to the favourites (without needing an owner reference)
def fave_seed(car)
  Favourite.create!(car: car) if rand(2) == 1 # Randomly add car to favourites
end

# Add random cars to favourites (without associating it with any specific owner)
random_cars = cars.sample(4)

random_cars.each do |car|
  fave_seed(car) # Randomly add the car to the favourites
end

puts "Seeding complete! Created #{Owner.count} owners, #{Car.count} cars, #{Review.count} reviews, and #{Favourite.count} favourites."
