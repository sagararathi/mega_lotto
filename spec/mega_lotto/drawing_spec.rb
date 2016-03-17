require 'spec_helper'

module MegaLotto
  describe Drawing do
    context '#draw' do
      let(:drawing) { Drawing.new.draw }
      it 'return an Array' do
        expect(drawing).to be_a(Array)
      end

      it 'it returns and Array of 5 element' do
        expect(drawing.size).to eq(5)
      end

      it 'each element ia an integer' do
        drawing.each do |item|
          expect(item).to be_a(Integer)
        end
      end

      it 'each element is < 60' do
        drawing.each do |item|
          expect(item).to be < 60
        end
      end
    end
  end
end