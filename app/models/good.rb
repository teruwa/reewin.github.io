class Good < ActiveRecord::Base
    has_many :reviews
    has_many :symptoms
end
