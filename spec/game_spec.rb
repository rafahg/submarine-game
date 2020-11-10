require 'game'

describe Game do
  before :each do
    srand(1)
  end
  context 'methods responding to class' do
    it '#game responds to class Game' do
      expect(subject).to respond_to(:game)
    end
    it '#roll_dice responds to class Game' do
      expect(subject).to respond_to(:roll_dice)
    end
  end
  context 'method' do
    it '#roll_dice will return an integer' do
      expect(subject.roll_dice).to be_kind_of(Integer)
    end 
 
    it '#roll_dice will return a random number in the range 1..6' do
      solution = (1..6)
      expect(subject.roll_dice).to eq 6
    end
  end
end