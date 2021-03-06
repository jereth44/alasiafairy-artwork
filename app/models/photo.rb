class Photo < ActiveRecord::Base
  #Mounts paperclip image
  has_attached_file :image

  #This validates the type of file uploaded. According to this, only images are allowed.
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  #Validates file, file type and file size
  validates_attachment :image, presence: true,
  content_type: { content_type: ["image/jpeg", "image/png"] },
  size: { in: 0..10.megabytes }
end
