require_relative 'score-bowling-game'

RSpec.describe BowlingGameScorer do
  describe "#total_score" do
    context "for a 'basic game with no special or interesting throws'" do
      it "returns the score" do
        pins = [1,5, 4,4, 8,0, 5,3, 0,0, 4,5, 2,3, 8,1, 7,1, 1,1]

        scorer = BowlingGameScorer.new(pins)

        expect(scorer.total_score).to eq(63)
      end
    end

    context "where missed throws are marked as '-'" do
      it "returns the score" do
        
      end
    end
  end
end