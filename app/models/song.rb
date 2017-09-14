class Song < ApplicationRecord

  belongs_to :artist, optional: true

  validates :title, presence: true, length: { maximum: 50 }

end
