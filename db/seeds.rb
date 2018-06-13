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
    make: 'Cessna 182',
    description: '4 seats, Ifr & Vfr',
    location: 'Amsterdam',
    user: User.first,
    picture: "https://upload.wikimedia.org/wikipedia/commons/6/66/Cessna_182P.jpg"
  },

  {
    rate: 120,
    make: 'Tommy PA 38',
    description: '2 seats, Ifr & Vfr',
    location: 'Paris',
    user: User.second,
    picture: "http://imgproc.airliners.net/photos/airliners/6/7/4/2017476.jpg?v=v40"
  },

  {
    rate: 130,
    make: 'Cessna 152',
    description: '2 seats, Ifr & Vfr',
    location: 'Moscow',
    user: User.third,
    picture: "http://www.calgaryflyingclub.com/cfc-assets/uploads/152.jpg"
  }
]

planes.each do |plane|
  Plane.create!(plane)
end
