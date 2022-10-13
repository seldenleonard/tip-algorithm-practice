require_relative 'score-bowling-game'

RSpec.describe BowlingGameScorer do
  describe "#my_test_method" do
    it "outputs 'hello world'" do
      scorer = described_class.new # or, this line could look like this: scorer = BowlingGameScorer.new
      expect(scorer.my_test_method). to eq("YOU MADE IT!!! (HELLO WORLD)")
    end
  end
end