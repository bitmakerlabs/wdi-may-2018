class Comment < ApplicationRecord
  # there is a picture_id foreign key in your db table
  belongs_to :picture
end
