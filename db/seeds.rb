Collectible.delete_all
Collectible.create(title: 'Snowboard Kids',
  description:
    %{<p>
      <em>Atlus, Nintendo64</em>
      Mario Kart on snowboards.
      </p>},
  image_url: 'snowboard_kids.jpg',
  price: 32.00)
Collectible.create(title: 'Romancing SaGa 2',
  description:
    %{<p>
      <em>Square, Super Nintendo</em>
      The fourth installment of the SaGa role-playing game series.
      </p>},
  image_url: 'romancing_saga_2_snes_jp.jpg',
  price: 26.00)
Collectible.create(title: 'Tales of Abyss',
  description:
    %{<p>
      <em>Namco Bandai, Playstation 2</em>
      The eight flagship title of the Tales role-playing game series.
      </p>},
  image_url: 'tales_of_abyss.jpg',
  price: 40.00)



User.delete_all
User.create(email:'admin@toyan.com', password:'secret', password_confirmation:'secret')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#require 'securerandom'

# 5.times do
#   Piece.create(
#     :video => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :words => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :caption => SecureRandom.hex(6),
#     :state => 'unpublished'
#   )
# end

# 5.times do
#   Piece.create(
#     :video => SecureRandom.hex(6),
#     :words => SecureRandom.hex(6),
#     :caption => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :video => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :words => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end



# 5.times do
#   Piece.create(
#     :caption => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :video => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :video => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :video => SecureRandom.hex(6),
#     :words => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :video => SecureRandom.hex(6),
#     :caption => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end


# 5.times do
#   Piece.create(
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :words => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :caption => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :words => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :words => SecureRandom.hex(6),
#     :caption => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# 5.times do
#   Piece.create(
#     :caption => SecureRandom.hex(6),
#     :state => 'published'
#   )
# end

# VideoStream.create(url:'http://player.twitch.tv/?channel=shaeta')


