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

  def ==(word_to_compare)
    self.name() == word_to_compare.name()
  end

  def save
    @@words[self.id] = Word.new(self.name, self.id)
  end
end
