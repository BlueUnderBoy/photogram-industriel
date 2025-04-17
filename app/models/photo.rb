class Photo < ApplicationRecord
  belongs_to :owner, class_name: "User", counter_cache: true
  has_many :comments
end
