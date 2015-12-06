class Advertisement < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader

end
