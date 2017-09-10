class AddRemoteProfilePictureUrlToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :remote_profile_picture_url, :string
  end
end
