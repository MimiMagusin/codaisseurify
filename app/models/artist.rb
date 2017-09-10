class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos

  def full_name
    return "#{first_name} #{last_name}"
  end
end
