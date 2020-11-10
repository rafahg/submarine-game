require 'game'

describe Game do
  context 'methods responding to class' do
    it '#game responds to class Game' do
      expect(subject).to respond_to(:game)
    end
  end
end