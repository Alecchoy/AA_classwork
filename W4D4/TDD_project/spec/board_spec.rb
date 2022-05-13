require 'board'

describe Board do 
    let(:b) {Board.new}

    describe '#won?' do

        it 'be considered a win if' do 
            expect(b.arr2.length).to eq(0)
        end

        it 'will have an arr1.length of 0' do 
            expect(b.arr1.length).to eq(5)
        end


        it "should return false if length of grid[2] is not 7" do
            expect(b.arr2.length == 7).to eq(false)
        end
    end


end

