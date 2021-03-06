require_relative '../lib/chess/piece.rb'

describe Piece do

  it { should respond_to :color }
  it { should respond_to :location }
  it { should respond_to :move }

  describe "validating moves" do

    # see specific piece specs

  end

  it "should know if another piece is an opponent" do
    @black_piece = Piece.new("black", "A1")
    @white_piece = Piece.new("white", "A2")
    expect(@black_piece.opponent?(@white_piece)).to be_truthy
    expect(@black_piece.opponent?(@black_piece)).to be_falsey
  end

  it "should know who its fearless leader (king) is" do
    @board = Board.new
    @piece = @board["A1"]
    expect(@piece.my_king(@board)).to be_a(King)
  end

  describe "rank and file" do
    before do
      @board = Board.new
      @piece = @board["A1"]
    end

    it "should know what the piece's file is" do
      expect(@piece.file).to eq("A")
    end

    it "should know what the piece's rank is" do
      expect(@piece.rank).to eq("1")
    end
  end

end
