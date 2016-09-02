require 'rails_helper'

RSpec.describe WineType, type: :model do
  let!(:valid_wine_type) { WineType.new(name: "red wine") }
  let(:invalid_wine_type) { WineType.new(name: "") }

  describe 'validations' do
    describe 'when valid' do
      it 'is valid when the name is not null' do
        expect(valid_wine_type).to be_valid
      end
    end

    describe 'when not valid' do
      it 'is not valid without a name (with null name)' do
        expect(invalid_wine_type).to_not be_valid
      end
    end

    describe '#name' do
      it { should validate_presence_of(:name) }
    end
  end
  
end
