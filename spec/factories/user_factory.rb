FactoryGirl.define do
  factory :user do
    username              "nsu9364"
    email                 "nstraub@boabtravel.com"
    password              "foobar"
    password_confirmation "foobar"

    factory :admin_user do
      admin true
	end
  end
end