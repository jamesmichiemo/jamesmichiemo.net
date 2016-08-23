class Piece < ApplicationRecord
  include AASM
  default_scope { order('created_at DESC') }
  # mount_uploader :audio, AudioUploader
  mount_uploader :photo, PhotoUploader

  #  MP3_CONTENT_TYPES = %w(
  #    application/x-mp3
  #    audio/mpeg
  #    audio/mpg
  #  )

  aasm :column => 'state' do
    state :draft, :initial => true
    state :published
 
    event :publish do
      transitions :from => :draft, :to => :published
    end
     
    event :unpublish do
      transitions :from => :published, :to => :draft
    end
  end

  def publish_and_save
    publish && save if publishable?
  end

  def unpublish_and_save
    unpublish && save(validate: false)
  end

  def piece_published?
    state == "published"
  end

  def publishable?
    self.photo.present? || 
    self.video.present? ||
    self.audio.present? ||
    self.words.present?
  end

  # def self.text_search(query)
  #   if query.present?
  #     where("photo ILIKE :q OR video ILIKE :q OR audio ILIKE :q" \
  #           "words ILIKE :q OR captions ILIKE :q", \
  #            q: "%#{query}%")
  #   else
  #     self.none
  #   end
  # end
end
