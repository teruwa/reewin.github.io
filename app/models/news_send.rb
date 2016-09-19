class NewsSend < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
end
