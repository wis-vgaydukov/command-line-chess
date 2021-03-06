require_relative '../lib/chess/queen.rb'

describe Queen do

  it { should be_a_kind_of(Piece) }
  it { should respond_to :color }
  it { should respond_to :location }

  it "should know what its character is" do
    @queen = Queen.new("White", "A1")
    expect(@queen.icon).to eq("\u2655")
  end

  describe "valid moves" do
    before { @queen = Queen.new("white", "D4") }
    before { @board = Board.new }

    it "should be able to move vertically to any position" do
      expect(@queen.valid_move?("D3", @board)).to be_truthy
    end

    it "should be able to move horizontally to any position" do
      expect(@queen.valid_move?("H4", @board)).to be_truthy
    end

    it "should be able to move diagonally" do
      expect(@queen.valid_move?("C3", @board)).to be_truthy
      expect(@queen.valid_move?("E3", @board)).to be_truthy
      expect(@queen.valid_move?("E5", @board)).to be_truthy
      expect(@queen.valid_move?("E3", @board)).to be_truthy
    end

  end

end
