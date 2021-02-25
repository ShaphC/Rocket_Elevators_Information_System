class Lead < ApplicationRecord
  # has_one_attached :attached_file

  # validates :attached_file, file_size: { less_than_or_equal_to: 10.megabytes },
  # file_content_type: { allow: ['image/jpeg', 'image/png'] }

 
  

  # validates :attached_file, blob: { content_type: ['application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/pdf'], size_range: 0..10.megabytes }
  
  
  
  # validates :attached_file, presence: true, blob: { content_type: :document } # supported options: :image, :audio, :video, :text
  # validates :attached_file, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'document/jpeg'], size_range: 0..10.megabytes }
  # validates :attached_file, presence: true, blob: { content_type: %r{^image/}, size_range: 1..10.megabytes }
  



  # validate :acceptable_file

  #   def acceptable_file
  #     return unless attached_file.attached?
    
  #     unless attached_file.byte_size <= 10.megabyte
  #       errors.add(:attached_file, "is too big")
  #     end

  #     acceptable_types = ["image/jpeg", "image/png", "filename/docx", "filename/pdf"]
  #        unless acceptable_types.include?(attached_file.content_type)
  #          errors.add(:attached_file, "must be a JPEG, PNG, docx or pdf")
  #       end
  #   end







end