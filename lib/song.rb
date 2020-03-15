class Song
  attr_accessor :name, :artist_name
  @@all = []

  
  def self.create
    song = self.new
    self.all << song
    song
  end

    def self.new_by_name(new_song_name)
      song = self.new
      song.name = new_song_name
      song


    end

    def self.create_by_name(nimi)
      song = self.create
      song.name = nimi
      song
      end
 
 
      def self.find_by_name(nimi)
        @@all.find {|song| song.name == nimi}
      end

        def self.find_or_create_by_name(nimi)
          self.find_by_name(nimi) || self.create_by_name(nimi)
        end
      
        def self.alphabetical
          @@all.sort_by{|nimi|nimi.name}
        end

        def self.new_from_filename(filename)
          info = filename.split(" - ")
          song = self.new
          song.name = info[1].chomp(".mp3")
          song.artist_name = info[0]
          song
        end

        def self.create_from_filename(filename)
          info = filename.split(" - ")
          song = self.create
          song.name = info[1].chomp(".mp3")
          song.artist_name = info[0]
          song
        end

        def self.destroy_all
          @@all.clear
        end





  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def create
    song = Song.create
    @@all << song
  end

  # def Song
  # song = Song.create
  # song
  # end

end
