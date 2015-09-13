FactoryGirl.define do
  factory :purchase do
    status 'pending'
  end

  trait :in_progress do
    status 'in_progress'
  end

  trait :submitted do
    status 'submitted'
  end

  trait :shipped do
    status 'shipped'
  end

  trait :received do
    status 'received'
  end
end
