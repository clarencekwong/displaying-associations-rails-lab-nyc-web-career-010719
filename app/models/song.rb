class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    @artist = Song.find_by(title: self.title).artist.name
  end
end
