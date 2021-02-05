class Artist
    attr_accessor :name
    @@song_counter = 0
  
    def initialize(name)
      @name = name
    end
  
    def add_song(song)
      song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end 
  
    def songs
        Song.all.select {|song| 
        if song.artist == self
            #counter for all songs from all artists
            @@song_counter += 1
            song.artist == self
        end}
    end

    def self.song_count
        @@song_counter
    end 
end 