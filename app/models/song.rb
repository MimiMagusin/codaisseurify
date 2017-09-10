class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true, length: { maximum: 50 }
end
