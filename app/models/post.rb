class Post < ActiveRecord::Base
  mount_uploader :from_image, S3uploaderUploader
  mount_uploader :target_image, S3uploaderUploader
  has_many :comments, dependent: :destroy
end
