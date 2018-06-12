Plane.destroy_all
User.destroy_all


users =
[
  {
    first_name: 'Lucia',
    last_name: 'Espiga',
    email: 'lucia@gmail.com',
    password: '123456'

  },

  {
    first_name: 'John',
    last_name: 'Lennon',
    email: 'jl@gmail.com',
    password: '123456'
  },

  {
    first_name: 'Darth',
    last_name: 'Vader',
    email: 'sw@gmail.com',
    password: '123456'
  }
]

users.each do |user|
  User.create!(user)
end



planes =
[
  {
    rate: 80,
    make: 'CESSAN 182',
    description: '4 seats, Ifr & Vfr',
    location: 'Amsterdam',
    user: User.first
  },

  {
    rate: 120,
    make: 'Tommy PA 38',
    description: '2 seats, Ifr & Vfr',
    location: 'Paris',
    user: User.second
  },

  {
    rate: 130,
    make: 'Cessna 152',
    description: '2 seats, Ifr & Vfr',
    location: 'Moscow',
    user: User.third
  }
]

planes.each do |plane|
  Plane.create!(plane)
end
