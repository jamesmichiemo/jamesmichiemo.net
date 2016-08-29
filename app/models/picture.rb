class Picture < ApplicationRecord
  belongs_to :piece

  default_scope { order('pictures.id ASC') }
  mount_uploader :image, ImageUploader
end
