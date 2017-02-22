class Logo < ApplicationRecord

  mount_uploader :image, LogoImageUploader
  
end
