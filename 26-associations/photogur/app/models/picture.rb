class Picture < ActiveRecord::Base
  # there is a foreign key about you (picture) in the comments table
  has_many :comments
  has_and_belongs_to_many :tags
end
