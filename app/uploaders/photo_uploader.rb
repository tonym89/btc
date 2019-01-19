class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  make_private
  # end
end
