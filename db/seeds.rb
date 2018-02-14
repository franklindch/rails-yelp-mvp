puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Chez Gladines',
    address:      '25 boulevard batignolles, Paris',
    category:     'french'
  },
  {
    name:         'Tchang',
    address:      'Tokyo, Japon',
    category:     'japanese',
    phone_number: '0668295116'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'italian',
    phone_number: '0668695113'
  },
  {
    name:         'Jeon Guy',
    address:      'Shangaï, China',
    category:     'chinese',
    phone_number: '0668695116'
  },
  {
    name:         'Bistrot café',
    address:      'rue saint maur, Paris',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
