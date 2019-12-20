class Word
  attr_reader :id
  attr_accessor :name

  def initialize(name, id)
    @name = name
    @id = id || @@total_rows += 1
  end

  @@words = {}
  @@total_rows = 0

  def self.all()
    @@words.values()
  end

  def ==(other_word)
    self.name.eql?(other_word.name)
  end
end
