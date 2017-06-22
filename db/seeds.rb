# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ActiveRecord::Base.transaction do
  u1 = User.create!(username: 'zyu')
  u2 = User.create!(username: 'wyb')
  u3 = User.create!(username: 'steve')

  a1 = Artwork.create!(title: 'The Morning', image_url: 'www.zyu1.com', artist_id: u1.id)
  a2 = Artwork.create!(title: 'In the Forest', image_url: 'www.wyb1.com', artist_id: u2.id)
  a3 = Artwork.create!(title: 'The Moon', image_url: 'www.steve1.com', artist_id: u3.id)

  ArtworkShare.create!(artwork_id: a1.id, viewer_id: u2.id)
  ArtworkShare.create!(artwork_id: a2.id, viewer_id: u3.id)
  ArtworkShare.create!(artwork_id: a3.id, viewer_id: u1.id)

  Comment.create!(body: "Great work!", user_id: 1, artwork_id: 2)
  Comment.create!(body: "Thanks!", user_id: 2, artwork_id: 2)
  Comment.create!(body: "Nice job!", user_id: 3, artwork_id: 2)
  Comment.create!(body: "Not bad!", user_id: 3, artwork_id: 1)


# end
