class Word
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  @@words = []

  def self.all()
    @@words
  end
end
