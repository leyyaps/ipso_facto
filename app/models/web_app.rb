class WebApp < ApplicationRecord
  mount_uploader :image, WebAppImageUploader
end
