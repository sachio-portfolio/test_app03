class Divesite < ApplicationRecord
  belongs_to :location
  has_many :posts, dependent: :destroy
end
