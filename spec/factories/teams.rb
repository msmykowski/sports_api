FactoryGirl.define do
  factory :team do
    name FFaker::Name.first_name
    abbr FFaker::Name.first_name
  end

end
