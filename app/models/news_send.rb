class NewsSend < ActiveRecord::Base
    mount_uploader :photo, AvatarUploader
end
