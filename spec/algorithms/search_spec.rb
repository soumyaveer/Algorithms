module Algorithms
  describe Search do
    let(:input) { [1, 2, 4, 6, 7,  9, 10] }
    context '#binary' do
      context 'when element is the middle element in an array' do
        let(:search_element) { 6 }
        let(:expected_output) { true }

        it 'searches the elements' do
          actual_output = Search.new.binary(input, search_element)
          expect(actual_output).to eq(expected_output)
        end
      end

      context 'when element is at the end of an array' do
        let(:search_element) { 10 }
        let(:expected_output) { true }

        it 'returns true' do
          actual_output = Search.new.binary(input, search_element)
          expect(actual_output).to eq(expected_output)
        end
      end

      context 'when search element is the first element in the array' do
        let(:search_element) { 1 }
        let(:expected_output) { true }

        it 'returns true' do
          actual_output = Search.new.binary(input, search_element)
          expect(actual_output).to eq(expected_output)
        end
      end

      context 'when element is not present in the array' do
        let(:search_element) { 100 }
        let(:expected_output) { false }

        it 'returns false' do
          actual_output = Search.new.binary(input, search_element)
          expect(actual_output).to eq(expected_output)
        end
      end
    end
  end
end