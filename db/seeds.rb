# frozen_string_literal: true

Plant.destroy_all
Plant.create!(
  [{
    title: 'polka dot begonia',
    image: 'begonia-maculata.jpeg',
    water: 'Keep the soil generally moist,
    letting the top half inch of soil dry out between watering. Will not tolerate soggy soil.',
    light: 'Bright, indirect light.
    Higher light levels will promote strong growth and blooms, but avoid direct sunlight.',
    pet_safe: 'No'
  },
   {
     title: 'boston fern',
     image: 'boston-fern.jpeg',
     water: 'Water the fern when the soil becomes damp.
     Do not allow the soil to dry out. This may mean watering twice a week or daily in hot weather.',
     light: 'Bright, indirect light.',
     pet_safe: 'Yes'
   },
   {
     title: "devil's ivy",
     image: 'devils-ivy.jpeg',
     water: 'Err on the side of too dry rather than too wet.
     Water when the soil is partly dry',
     light: 'Bright, indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'swiss cheese plant',
     image: 'monstera-adansonii.webp',
     water: "Consistently moist but not soaked.
     Before watering your Swiss cheese plant, stick your finger into the soil about an inch deep.
     If the soil feels nearly dry to the touch, it's time to water the plant.",
     light: 'Bright, indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'monstera',
     image: 'monstera-deliciosa.png',
     water: 'Water weekly, or when top 2 inches of soil have dried.',
     light: 'High or medium indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'satin pothos',
     image: 'satin-pothos.jpeg',
     water: 'Keep moderately moist, allowing drying out inbetween waterings.',
     light: 'Bright, indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'heartleaf philodendron',
     image: 'heartleaf-philodendron.jpeg',
     water: 'In the summertime, keep the soil moist but not soggy. In the wintertime,
     allow the top half-inch of soil to dry between waterings.',
     light: 'Medium indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'rubber plant',
     image: 'rubber-plant.jpeg',
     water: 'Water regularly and moderately.',
     light: 'Medium indirect light.',
     pet_safe: 'No'
   },
   {
     title: 'triple splash',
     image: 'triple-splash.jpeg',
     water: 'Water when soil feels dry or plant starts to droop.',
     light: 'Bright light.',
     pet_safe: 'Safe in small amounts.'
   },
   {
     title: 'peacock plant',
     image: 'peacock.jpeg',
     water: 'Maintain moist soil. Water once the surface of the soil starts to dry.',
     light: 'Bright, indirect light. Avoid direct sunlight.',
     pet_safe: 'Yes.'
   },
   {
     title: 'zebra plant',
     image: 'calathea-zebrina.jpeg',
     water: 'Keep the soil lightly moist, watering once the top of the soil is just starting to dry out.
     Avoid soggy soil.',
     light: 'Bright or medium, indirect light.',
     pet_safe: 'Yes.'
   },
   {
     title: 'spider plant',
     image: 'spiderplant.jpeg',
     water: 'Lightly moist but not soggy soil. Better to underwater than overwater.',
     light: 'Light shade. Avoid direct sunlight.',
     pet_safe: 'Yes.'
   }]
)

Alias.destroy_all
Alias.create!(
  [{
    name: 'begonia maculata',
    plant_id: Plant.find_by(title: 'polka dot begonia').id
  },
   {
     name: 'polka dot plant',
     plant_id: Plant.find_by(title: 'polka dot begonia').id
   },
   {
     name: 'angel wing',
     plant_id: Plant.find_by(title: 'polka dot begonia').id
   },
   {
     name: 'spotted begonia',
     plant_id: Plant.find_by(title: 'polka dot begonia').id
   },
   {
     name: 'sword fern',
     plant_id: Plant.find_by(title: 'boston fern').id
   },
   {
     name: 'nephrolepis exaltata',
     plant_id: Plant.find_by(title: 'boston fern').id
   },
   {
     name: 'pothos',
     plant_id: Plant.find_by(title: "devil's ivy").id
   },
   {
     name: 'epipremnum aureum',
     plant_id: Plant.find_by(title: "devil's ivy").id
   },
   {
     name: 'swiss cheese vine',
     plant_id: Plant.find_by(title: 'swiss cheese plant').id
   },
   {
     name: 'monstera adansonii',
     plant_id: Plant.find_by(title: 'swiss cheese plant').id
   },
   {
     name: 'five holes plant',
     plant_id: Plant.find_by(title: 'swiss cheese plant').id
   },
   {
     name: 'monstera deliciosa',
     plant_id: Plant.find_by(title: 'monstera').id
   },
   {
     name: 'scindapsus pictus',
     plant_id: Plant.find_by(title: 'satin pothos').id
   },
   {
     name: 'silver vine',
     plant_id: Plant.find_by(title: 'satin pothos').id
   },
   {
     name: 'silver pothos',
     plant_id: Plant.find_by(title: 'satin pothos').id
   },
   {
     name: 'philodendron cordatum',
     plant_id: Plant.find_by(title: 'heartleaf philodendron').id
   },
   {
     name: 'ficus elastica burgundy',
     plant_id: Plant.find_by(title: 'rubber plant').id
   },
   {
     name: 'rubber fig',
     plant_id: Plant.find_by(title: 'rubber plant').id
   },
   {
     name: 'rubber tree',
     plant_id: Plant.find_by(title: 'rubber plant').id
   },
   {
     name: 'hypoestes phyllostachya',
     plant_id: Plant.find_by(title: 'triple splash').id
   },
   {
     name: 'goeppertia makoyana',
     plant_id: Plant.find_by(title: 'peacock plant').id
   },
   {
     name: 'calathea makoyana',
     plant_id: Plant.find_by(title: 'peacock plant').id
   },
   {
     name: 'calathea zebrina',
     plant_id: Plant.find_by(title: 'zebra plant').id
   },
   {
     name: 'chlorophytum comosum',
     plant_id: Plant.find_by(title: 'spider plant').id
   },
   {
     name: 'ribbon plant',
     plant_id: Plant.find_by(title: 'spider plant').id
   }]
)
