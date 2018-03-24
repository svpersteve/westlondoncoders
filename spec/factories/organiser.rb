FactoryBot.define do
  sequence :organiser_name do |n|
    "Organiser #{n}"
  end

  factory :organiser do
    name { FactoryBot.generate(:organiser_name) }
    image 'image.jpg'
    linkedin 'linkedin_username'
  end
end
