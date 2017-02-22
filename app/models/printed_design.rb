class PrintedDesign < ApplicationRecord
  mount_uploader :lead_image, PrintedDesignUploader
  mount_uploader :secondary_image, PrintedDesignUploader
end
