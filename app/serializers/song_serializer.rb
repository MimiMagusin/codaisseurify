class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_year, :artist

  belongs_to :artist
end
