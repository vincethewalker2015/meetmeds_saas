class Profile < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
   
end
=======
   belongs_to :user
   mount_uploader :picture, PictureUploader
   validate  :picture_size
   
   private
    # Validates the size of the uploaded picture.
    def picture_size
       if picture.size > 5.megabytes
           errors.add(:picture, "Hey! this picture should be less than 5MB")
       end
    end
  
end
>>>>>>> development
