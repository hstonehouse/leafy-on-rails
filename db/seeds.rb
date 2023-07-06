# frozen_string_literal: true

Plant.destroy_all
Plant.create!(
  [{
    title: 'Polka Dot Begonia',
    image: 'begonia-maculata.jpeg',
    water: 'Keep the soil generally moist,
    letting the top half inch of soil dry out between watering. Will not tolerate soggy soil.',
    light: 'Bright, indirect light.
    Higher light levels will promote strong growth and blooms, but avoid direct sunlight.',
    pet_safe: 'No'
  },
   {
     title: 'Boston Fern',
     image: 'boston-fern.jpeg',
     water: 'Water the fern when the soil becomes damp.
     Do not allow the soil to dry out. This may mean watering twice a week or daily in hot weather.',
     light: 'Bright, indirect light.',
     pet_safe: 'Yes'
   },
   {
     title: "Devil's Ivy",
     image: 'devils-ivy.jpeg',
     water: 'Err on the side of too dry rather than too wet.
     Water when the soil is partly dry',
     light: 'Bright, indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'Swiss Cheese Plant',
     image: 'monstera-adansonii.webp',
     water: "Consistently moist but not soaked.
     Before watering your Swiss cheese plant, stick your finger into the soil about an inch deep.
     If the soil feels nearly dry to the touch, it's time to water the plant.",
     light: 'Bright, indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'Monstera',
     image: 'monstera-deliciosa.png',
     water: 'Water weekly, or when top 2 inches of soil have dried.',
     light: 'High or medium indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'Satin Pothos',
     image: 'satin-pothos.jpeg',
     water: 'Keep moderately moist, allowing drying out inbetween waterings.',
     light: 'Bright, indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'Heartleaf Philodendron',
     image: 'heartleaf-philodendron.jpeg',
     water: 'In the summertime, keep the soil moist but not soggy. In the wintertime,
     allow the top half-inch of soil to dry between waterings.',
     light: 'Medium indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'Rubber Plant',
     image: 'rubber-plant.jpeg',
     water: 'Water regularly and moderately.',
     light: 'Medium indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'Triple Splash',
     image: 'triple-splash.jpeg',
     water: 'Water when soil feels dry or plant starts to droop.',
     light: 'Bright light.',
     pet_safe: 'Safe in small amounts.'
   },
   {
     title: 'Peacock plant',
     image: 'peacock.jpeg',
     water: 'Maintain moist soil. Water once the surface of the soil starts to dry.',
     light: 'Bright, indirect light. Avoid direct sunlight.',
     pet_safe: 'Yes.'
   },
   {
     title: 'Zebra Plant',
     image: 'calathea-zebrina.jpeg',
     water: 'Keep the soil lightly moist, watering once the top of the soil is just starting to dry out.
     Avoid soggy soil.',
     light: 'Bright or medium, indirect light.',
     pet_safe: 'Yes.'
   },
   {
     title: 'Spider Plant',
     image: 'spiderplant.jpeg',
     water: 'Lightly moist but not soggy soil. Better to underwater than overwater.',
     light: 'Light shade. Avoid direct sunlight.',
     pet_safe: 'Yes.'
   }]
)
