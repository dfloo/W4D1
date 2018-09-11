#!/usr/bin/env ruby
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ArtworkShares.destroy_all
User.destroy_all
Artwork.destroy_all


User.create(username: "Bob Saget")
User.create(username: "Sob Baget")
User.create(username: "Jon Saget")
User.create(username: "Bobby Saget")
User.create(username: "Roberta Saget")

Artwork.create(title: "Bob's Saget", image_url: "bob.com", artist_id: User.find_by(username: "Bob Saget").id)
Artwork.create(title: "Sob's Baget", image_url: "sob.com", artist_id: User.find_by(username: "Sob Baget").id)
Artwork.create(title: "Jon's Saget", image_url: "jon.com", artist_id: User.find_by(username: "Jon Saget").id)
Artwork.create(title: "Bobby's Saget", image_url: "bobby.com", artist_id: User.find_by(username: "Bobby Saget").id)
Artwork.create(title: "Roberta's Saget", image_url: "roberta.com", artist_id: User.find_by(username: "Roberta Saget").id)

ArtworkShares.create(artwork_id: Artwork.find_by(image_url: "bob.com").id, viewer_id: User.find_by(username: "Sob Baget").id)
ArtworkShares.create(artwork_id: Artwork.find_by(image_url: "sob.com").id, viewer_id: User.find_by(username: "Bob Saget").id)
ArtworkShares.create(artwork_id: Artwork.find_by(image_url: "jon.com").id, viewer_id: User.find_by(username: "Bob Saget").id)
ArtworkShares.create(artwork_id: Artwork.find_by(image_url: "sob.com").id, viewer_id: User.find_by(username: "Bobby Saget").id)
ArtworkShares.create(artwork_id: Artwork.find_by(image_url: "sob.com").id, viewer_id: User.find_by(username: "Roberta Saget").id)
