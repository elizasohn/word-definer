require 'rspec'
require 'word'

describe '#Word' do
  before(:each) do
    Word.clear()
  end
end

describe(".all") do
  it("is empty at first") do
    expect(Word.all()).to(eq({}))
  end
end

describe('#save') do
  it("saves a word") do
    word = Word.new("embiggen", nil)
    word.save()
    word2 = Word.new("cromulent", nil)
    word2.save()
    expect(Word.all).to(eq([word, word2]))
  end
end
