# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
require 'securerandom'

5.times do
  Piece.create(
    :video => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :words => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :caption => SecureRandom.hex(6),
    :state => 'unpublished'
  )
end

5.times do
  Piece.create(
    :video => SecureRandom.hex(6),
    :words => SecureRandom.hex(6),
    :caption => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :video => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :words => SecureRandom.hex(6),
    :state => 'published'
  )
end



5.times do
  Piece.create(
    :caption => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :video => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :video => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :video => SecureRandom.hex(6),
    :words => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :video => SecureRandom.hex(6),
    :caption => SecureRandom.hex(6),
    :state => 'published'
  )
end


5.times do
  Piece.create(
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :words => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :caption => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :words => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :words => SecureRandom.hex(6),
    :caption => SecureRandom.hex(6),
    :state => 'published'
  )
end

5.times do
  Piece.create(
    :caption => SecureRandom.hex(6),
    :state => 'published'
  )
end

VideoStream.create(url:'http://player.twitch.tv/?channel=shaeta')

User.create(email:'admin@toyan.com', password:'secret', password_confirmation:'secret')
