class Review < ActiveRecord::Base
  belongs_to :good
  validates :good_id, presence: true
  validates :content, presence: true
end
