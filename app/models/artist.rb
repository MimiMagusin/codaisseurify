class Artist < ApplicationRecord
  has_many :songs

  def full_name
    return "#{first_name} #{last_name}"
  end
end
