# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
boards = Board.create([
  {name: "Travel Ideas", description: "Here are some vacation ideas for next year!", photo_url: "https://snap-photos.s3.amazonaws.com/img-thumbs/280h/XH9761OM6J.jpg", user_id: 1}
])

pins = Pin.create([
  {title: "Closer to home...", photo_url: 'https://snap-photos.s3.amazonaws.com/img-thumbs/960w/U2HE5FVLQ0.jpg', description: "Staycation!", user_id: 1, board_id: 1},
  {title: "Hiking Trip", photo_url: 'https://snap-photos.s3.amazonaws.com/img-thumbs/960w/K29UC45CG8.jpg', description: "Hiking in Colorado", user_id: 1, board_id:1}
  ])
