class Lead < ApplicationRecord
  has_one_attached :attached_file, dependent: :destroy
end 
# Attach an avatar to the user.
# user.attached_file.attach(io: File.open("/path/to/face.jpg"), filename: "face.jpg", content_type: "image/jpg")

# # Does the user have an avatar?
# user.attached_file.attached? # => true

# # Synchronously destroy the avatar and actual resource files.
# user.attached_file.purge

# # Destroy the associated models and actual resource files async, via Active Job.
# user.attached_file.purge_later

# # Does the user have an avatar?
# user.attached_file.attached? # => false
 




