class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@genres=[]
  @@artists=[]

  def initialize(name, artist, genre)
    #instance vars
    @name=name
    @artist=artist
    @genre=genre

    #class variables
    @@count+=1
    @@genres.push(genre)
    @@artists.push(artist)
  end
  #class methods
  def self.count
    return @@count
  end

  def self.genres
    return @@genres.uniq
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genre_count
    histogram={}
    @@genres.each do
      |data|
      if histogram[data]==nil
        histogram[data]=1
      else
        histogram[data]+=1
      end
    end
    return histogram
  end

  def self.artist_count
    histogram={}
    @@artists.each do
      |data|
      if histogram[data]==nil
        histogram[data]=1
      else
        histogram[data]+=1
      end
    end
    return histogram
  end
end