class Good < ActiveRecord::Base
    has_many :reviews
    has_many :symptoms
    
    mount_uploader :photo, AvatarUploader
    
    acts_as_taggable_on :symptoms # post.symptoms_list が追加される
    
    
    
    
end
