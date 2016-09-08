# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  if Rails.env.production? || Rails.env.staging?
    storage :fog

    include CarrierWave::MimeTypes
    process :set_content_type

    # Override the directory where uploaded files will be stored.
    # This is a sensible default for uploaders that are meant to be mounted:
    def store_dir
      "uploads/images/"
    end

    # Create different versions of your uploaded files:
    version :large do
      process :resize_to_fit => [1920, 1920]
    end

    version :medium do
      process :resize_to_fit => [960, 960]
    end

    version :small do
      process :resize_to_fit => [480, 480]
    end

    # Add a white list of extensions which are allowed to be uploaded.
    # For images you might use something like this:
    def extension_white_list
      %w(jpg jpeg gif png)
    end

    # Override the filename of the uploaded files:
    # Avoid using model.id or version_name here, see uploader/store.rb for details.
    # def filename
    #   "#{model.id}-original.jpg" 
    # end
  else
    version :large do
      process :resize_to_fit => [1920, 1920]
      process :convert => 'png'
    end

    version :medium do
      process :resize_to_fit => [960, 960]
      process :convert => 'png'
    end

    version :small do
      process :resize_to_fit => [480, 480]
      process :convert => 'png'
    end

    storage :file
  end  
end
