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
    location: 'EYE Filmmuseum, Amsterdam',
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
    location: 'Anne Frank Huis, Amsterdam',
    user: User.third,
    remote_picture_url: "https://upload.wikimedia.org/wikipedia/commons/e/e8/G-BRNE-Cessna152.jpg"
  },

  {
    rate: 250,
    make: 'Cessna 182',
    description: 'four-seat, single-engined, VFR & IFR flying',
    location: 'Foam, Amsterdam',
    user: User.third,
    remote_picture_url: "https://www.flyingmag.com/sites/flyingmag.com/files/styles/500_1x_/public/import/2012/sites/all/files/_images/201209/FLY1012_Skylane1_Big.jpg?itok=CU8_wned"
  },

  {
    rate: 150,
    make: 'Cessna 152',
    description: 'Two-seat, single-engined, only available for VFR flying',
    location: 'Berlin',
    user: User.second,
    remote_picture_url: "https://i.pinimg.com/originals/d7/41/6a/d7416a5153ebfdd10c7e53b5d7a7ddb2.jpg"
  },

  {
    rate: 175,
    make: 'Cessna 152',
    description: 'Two-seat, single-engined, VFR & IFR flying',
    location: 'Frankfurt',
    user: User.first,
    remote_picture_url: "https://www.airdailyx.net/wp-content/uploads/2018/03/c152_31_ss_l_180223170254.jpg"
  },

  {
    rate: 125,
    make: 'Cessna 152',
    description: 'Two-seat, single-engined, VFR & IFR flying',
    location: 'Amstelveen, Amsterdam',
    user: User.first,
    remote_picture_url: "https://www.flightsim.news/wp-content/uploads/2018/03/justflight-cessnac152.jpg"
  },

  {
    rate: 270,
    make: 'Cessna 182',
    description: 'Four-seat, single-engined, VFR & IFR flying',
    location: 'Zwanenburg, Amsterdam',
    user: User.second,
    remote_picture_url: "https://ae01.alicdn.com/kf/HTB1kCqcRpXXXXaeaXXXq6xXFXXXt/Cessna-182-1720-MM-Spanwijdte-Blauw-Met-Flap-LED-Balsahout-RC-Vliegtuig-Modelvliegtuigen.jpg_640x640.jpg"
  },

  {
    rate: 190,
    make: 'Cessna 172',
    description: 'Two-seat, single-engined, VFR & IFR flying',
    location: 'Amsterdam',
    user: User.third,
    remote_picture_url: "https://www.flyingmag.com/sites/flyingmag.com/files/styles/500_1x_/public/import/2012/sites/all/files/_images/201201/FLY0212_Skyhawk2-2_Big.jpg?itok=JZcp7KYM"
  },

  {
    rate: 125,
    make: 'Piper PA 38',
    description: 'Two-seat, single-engined, VFR & IFR flying',
    location: 'Amsterdamse Golf Club, Amsterdam',
    user: User.first,
    remote_picture_url: "http://imgproc.airliners.net/photos/airliners/0/8/2/1103280.jpg?v=v40"
  },

  {
    rate: 350,
    make: 'Curtiss P-40 Tomahawk',
    description: 'Two-seat, single-engined,IFR flying',
    location: 'houtrak, Amsterdam',
    user: User.second,
    remote_picture_url: "http://www.warbirdalley.com/images/fly-by-P-40.jpg"
  },

  {
    rate: 300,
    make: 'Cessna 182',
    description: 'Four-seat, single-engined,IFR flying',
    location: 'Schiphol, Amsterdam',
    user: User.second,
    remote_picture_url: "https://www.cessnaflyer.org/media/k2/items/cache/75b44f26b45cdcf3e7750518b026a835_XL.jpg"
  },

  {
    rate: 195,
    make: 'Cessna 152',
    description: 'Two-seat, single-engined,IFR flying',
    location: 'Rome',
    user: User.first,
    remote_picture_url: "http://www.plane4you.eu/public/upload/offer/260/images/5453/dsc-0152.jpg"
  },

  {
    rate: 175,
    make: 'Cessna 172',
    description: 'Two-seat, single-engined,IFR flying',
    location: 'Madrid',
    user: User.third,
    remote_picture_url: "https://img.grouponcdn.com/deal/gw3hs9AjM8kfzkmcZaxX/nP-700x420/v1/c700x420.jpg"
  },

  {
    rate: 225,
    make: 'Cessna 182',
    description: 'Four-seat, single-engined,IFR flying',
    location: 'London',
    user: User.second,
    remote_picture_url: "http://aviatormag.com.au/wp/wp-content/uploads/2012/08/Cessna182Main3.jpg"
  },

  {
    rate: 115,
    make: 'Piper PA 38',
    description: 'Two-seat, single-engined,IFR flying',
    location: 'Dublin',
    user: User.third,
    remote_picture_url: "https://i.ytimg.com/vi/o98GcQ12Njo/maxresdefault.jpg"
  },
]

planes.each do |plane|
  Plane.create!(plane)
end
