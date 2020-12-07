class Listing < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_one_attached :pic1
  has_one_attached :pic2
  has_one_attached :pic3
  has_one_attached :pic4
  has_one_attached :pic5
  has_one_attached :pic6
  has_one_attached :pic7
  has_one_attached :pic8
  has_one_attached :pic9
  has_one_attached :pic10
end
