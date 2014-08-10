# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  storage :file
  # storage :fog
  CarrierWave.configure do |config|
    config.root = Rails.root
#    def store_dir
#      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
#    end
    #process :convert => 'jpg'
    process :resize_to_limit => [700, 700]
    version :thumb do
      process :resize_to_fit => [100, 100]
    end 

    def extension_white_list
      %w(jpg jpeg gif png)
    end
  end
end
