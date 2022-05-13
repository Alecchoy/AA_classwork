require 'first_tdd'

describe Array do 
    describe "#my_uniq" do 
        it "removes duplicates from an array" do 
            expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
        end

        it "works with an empty array" do 
            expect([].my_uniq).to eq([])
        end

        it "works with an array of one item" do 
            expect([1].my_uniq).to eq([1])
        end
    end

    describe "#two_sum" do 
        it 'should find all pairs of positions where the elements at those positions sum to zero' do 
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4],[2,3]])
        end

        it 'should find multiple pairs' do 
            expect([5,-1,-5,1].two_sum).to eq([[0,2],[1,3]])
        end

        it 'wont find target pairs of no sums = 0' do 
            expect([0,1,2,3].two_sum).to eq([])
        end
    end

    describe '#my_transpose' do 
        it "will convert between the row-oriented and column-oriented representations" do 
            expect([[0, 1, 2],[3, 4, 5],[6, 7, 8]].my_transpose).to eq([ [0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end

        it 'will take in an array of two by two' do
            expect([[1,4],[2,3]].my_transpose).to eq([[1,2],[4,3]])
        end
    end

    describe '#stock_picker' do 
        it 'will return an array of days' do 
            expect([].stock_picker).to eq([])
        end

        it 'will return the most profitable pair of days' do 
            expect([1,5,3,6,7].stock_picker).to eq([0,4])
        end

        it 'will buy first and then sell after' do
            expect([12,2,4,7,17,20,21].stock_picker).to eq([1,6])
        end
    end
end





