require 'rails_helper'

RSpec.describe Varietal, type: :model do
  let!(:valid_varietal) { Varietal.new(name: "Pinot Noir", is_black: true) }
  let(:invalid_varietal_no_name) { Varietal.new(name: "", is_black: true) }
  let(:invalid_varietal_no_is_black) { Varietal.new(name: "Pinot Noir", is_black: "") }

  describe 'validations' do
    describe 'when valid' do
      it 'is valid when the name and is_back are not null' do
        expect(valid_varietal).to be_valid
      end
    end

    describe 'when not valid' do
      it 'is not valid without a name (with null name)' do
        expect(invalid_varietal_no_name).to_not be_valid
      end

      it 'is not valid without a boolean given for is_black field' do
        expect(invalid_varietal_no_is_black).to_not be_valid
      end
    end

    xdescribe '#name' do
      it { should validate_presence_of(:name) }
    end

    xdescribe '#is_black' do
      it { should validate_presence_of(:is_black) }
    end
  end

  describe 'associations' do
    it { Varietal.reflect_on_association(:blend).macro.should  eq(:has_many) }
  end
  
end
