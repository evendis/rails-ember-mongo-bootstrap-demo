# Read about factories at https://github.com/thoughtbot/factory_girl

# FactoryGirl.define do
#   factory :post do |f|
#     f.sequence(:title) { |n| "post#{n}" }
#     f.body "post body text"
#   end
# end

Factory.define :post do |f|
  f.sequence(:title) { |n| "post#{n}" }
  f.body "post body text"
end
