FactoryGirl.define do
  factory :review do
    rating       4.5
    comment      "Love this place! Can't wait to go back!" 
    first_name   "Patty"
    last_name    "Smith"  
    restaurant
  end

  sequence :name do |n|
    "name-#{n}"
  end

  sequence :website do |n|
    "website-#{n}@website.com"
  end  

  factory :restaurant do
    name          
    address       "Atlanta, GA"
    phone         "555.555.5555"
    website       
  end
end