require 'piece'

describe Piece do 
    let(:board) { double("Bana", valid_pos?: true)}
    subject(:piece) { Piece.new (:white, board, [0,0])}
    describe '#initialize' do 
        context 'with valid arguements' do 
            it 'instantiates a piece correctly' do
                expect(piece.color).to be(:white)
                expect(piece.pos).to eq([0,0])
            end
        end
        context 'with invalid arguements' do
            it 'raises an error when provided with an invalid color' do 
                expect{ Piece.new(:blue, board,[0,0])}.to
                 raise_error("Invalid color")
            end

            it 'raises an error when provided with an invalid position' do 
                allow(board). to receive(:valid_pos?).and_return
                (false)
                expect {Piece.new(:white,board, [1,1])}.to raise_error("Invalid pos")
            end
        end

    end

    describe '#pos=' do
    before(:each) {piece.pos = [1,1]}
        it 'correctly reassigns position' do 
            piece.pos = [1,1]
            expect(piece.pos).to eq([1,1])
        end

        it 'still works' do 
            expect(piece.pos).to eq([1,1])
        end
    end

    describe "#symbol" do 
        it 'raises an error' do 
            expect{ piece.symbol }.to raise_error
            (NotImplementedError)
        end
    end

    describe '#empty?' do 
        it 'return false' do 
            expect(piece.empty?).to eq(false)
        end
    end

end 