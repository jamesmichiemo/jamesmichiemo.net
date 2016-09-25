class Piece < ApplicationRecord
  has_many :pictures
  has_many :words

  include AASM
  default_scope { order('pieces.id DESC') }
  mount_uploader :audio, AudioUploader

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
    self.pictures.present? || 
    self.video.present? ||
    self.audio.present? ||
    self.words.present?
  end

  def has_pictures?
    self.pictures.present?
  end

  def has_video?
    self.video.present?
  end

  def has_audio?
    self.audio.present?
  end

  def has_words?
    self.words.present?
  end
end
