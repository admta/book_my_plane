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
    rate: 400,
    make: 'Cessna 182',
    description: 'Four-seat, single-engined, available for VFR & IFR flying',
    location: 'Amsterdam',
    user: User.first,
    picture: "https://upload.wikimedia.org/wikipedia/commons/6/66/Cessna_182P.jpg"
  },

  {
    rate: 250,
    make: 'Tomahawk PA 38',
    description: 'Two-seat, low wing, single-engined, available for VFR & IFR flying',
    location: 'Paris',
    user: User.second,
    picture: "http://imgproc.airliners.net/photos/airliners/6/7/4/2017476.jpg?v=v40"
  },

  {
    rate: 200,
    make: 'Cessna 152',
    description: 'Two-seat, single-engined, only available for VFR flying',
    location: 'Moscow',
    user: User.third,
    picture: "http://www.calgaryflyingclub.com/cfc-assets/uploads/152.jpg"
  }
]

planes.each do |plane|
  Plane.create!(plane)
end
