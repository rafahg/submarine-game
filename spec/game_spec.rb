require 'game'

describe Game do
 
  context 'methods responding to class' do
    it '#game responds to class Game' do
      expect(subject).to respond_to(:game)
    end
    it '#roll_dice responds to class Game' do
      expect(subject).to respond_to(:roll_dice)
    end

    it '#movement responds to class Games' do
      expect(subject).to respond_to(:movement)
    end
  end
  context 'method' do
    it '#roll_dice will return an integer' do
      expect(subject.roll_dice).to be_kind_of(Integer)
    end 
 
    it '#roll_dice will return a random number in the range 1..6' do
      srand(1)
      solution = (1..6)
      expect(subject.roll_dice).to eq 6
    end

    it '#movement will return the player in the correct position' do
      srand(2)
      subject.movement
      expect(subject.path).to eq [0, "player", 2, 3, 4, 5, 6, 7, 8, 9, 10]
    end
  end
end