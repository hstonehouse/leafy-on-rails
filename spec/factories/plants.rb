# frozen_string_literal: true

Factory.define do
  factory :plant do
    sequence(:title) {|n| 'Plant #{n}' }

    image { 'begonia-maculata.jpeg' }
    water do
      'Keep the soil generally moist, letting the top half inch of soil dry out between watering.
        Will not tolerate soggy soil.'
    end
    light { 'Bright, indirect light.' }
    pet_safe { 'No' }
  end
end