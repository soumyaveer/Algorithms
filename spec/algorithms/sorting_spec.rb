module Algorithms
  describe Sorting do
    let(:input) { [4, 3, 6, 7, 1, 2] }
    let(:expected_output) { [1, 2, 3, 4, 6, 7] }
    context '#bubble' do
      it 'sorts the elements in ascending order' do
        actual_output = Sorting.new(input).bubble
        expect(actual_output).to eq(expected_output)
      end
    end

    context '#selection' do
      it 'sorts the elements in ascending order' do
        actual_output = Sorting.new(input).selection
        expect(actual_output).to eq(expected_output)
      end
    end
  end
end