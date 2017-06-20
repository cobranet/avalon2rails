# spec/factories/todos.rb
FactoryGirl.define do
  factory :log do
    userid { Faker::Number.number(10)  }
    desc { Faker::Lorem.word  }
  end
end
