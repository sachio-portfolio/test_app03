class Post < ApplicationRecord
  belongs_to :user
  belongs_to :divesite

  scope :search_area, -> (divesite_id) { joins(:divesite).where(divesite: {id: divesite_id}) }

end
