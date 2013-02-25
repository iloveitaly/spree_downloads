FactoryGirl.define do
  factory :download, :class => Spree::Download do
    name { Faker::Lorem.words(3) }
    description { Faker::Lorem.paragraph }

    taxons { [FactoryGirl.create(:taxon)] }
    products { [FactoryGirl.create(:product)] }
  end
end