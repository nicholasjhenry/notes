has_many

     # class User < ActiveRecord::Base; has_many :posts; end
     after(:create) do |user|
       create(:post, user: user)
     end

     ignore do
       posts_count 5
     end

     after(:create) do |user, evaluator|
       create_list(:post, evaluator.posts_count, user: user)
     end

sequence

    factory :user do
      sequence(:email) { |n| "person#{n}@example.com" }
    end

association

    association :author, factory: :user
