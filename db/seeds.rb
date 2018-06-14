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
    picture: "remote_picture_url"
  },

  {
    rate: 250,
    make: 'Tomahawk PA 38',
    description: 'Two-seat, low wing, single-engined, available for VFR & IFR flying',
    location: 'Paris',
    user: User.second,
    picture: "remote_picture_url"
  },

  {
    rate: 200,
    make: 'Cessna 152',
    description: 'Two-seat, single-engined, only available for VFR flying',
    location: 'Moscow',
    user: User.third,
    picture: "remote_picture_url"
  }
]

planes.each do |plane|
  Plane.create!(plane)
end
