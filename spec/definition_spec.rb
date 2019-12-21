require 'rspec'
require 'word'
require 'definition'
require 'pry'

describe '#Definition' do

  before(:each) do
    Word.clear()
    Definition.clear()
    @word = Word.new("embiggen", nil)
    @word.save()
  end

  describe('#==') do
    it("is the same definition if it has the same attributes as another definition") do
      definition = Definition.new("to make bigger", @word.id, nil)
      definition2 = Definition.new("to make bigger", @word.id, nil)
      expect(definition).to(eq(definition2))
    end
  end


  describe('.clear') do
    it("clears all definitions") do
      definition = Definition.new("to make bigger", @word.id, nil)
      definition.save()
      definition2 = Definition.new("acceptable", @word.id, nil)
      definition2.save()
      Definition.clear()
      expect(Definition.all).to(eq([]))
    end
  end
end
