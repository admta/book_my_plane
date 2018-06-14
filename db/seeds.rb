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
    remote_picture_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Cessna182t_skylane_n2231f_cotswoldairshow_2010_arp.jpg/1200px-Cessna182t_skylane_n2231f_cotswoldairshow_2010_arp.jpg"
  },

  {
    rate: 250,
    make: 'Tomahawk PA 38',
    description: 'Two-seat, low wing, single-engined, available for VFR & IFR flying',
    location: 'Paris',
    user: User.second,
    remote_picture_url: "http://www.flugzeuginfo.net/acimages/pa38-112_d-egkv_1_edwi08.jpg"
  },

  {
    rate: 200,
    make: 'Cessna 152',
    description: 'Two-seat, single-engined, only available for VFR flying',
    location: 'Moscow',
    user: User.third,
    remote_picture_url: "https://upload.wikimedia.org/wikipedia/commons/e/e8/G-BRNE-Cessna152.jpg"
  }
]

planes.each do |plane|
  Plane.create!(plane)
end
