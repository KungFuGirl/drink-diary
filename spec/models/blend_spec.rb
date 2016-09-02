require 'rails_helper'

RSpec.describe Blend, type: :model do

  let!(:valid_blend) { Blend.new(name: "Chianti") }
  let(:invalid_blend) { Blend.new(name: "") }

  describe 'validations' do
    describe 'when valid' do
      it 'is valid when the name is not null' do
        expect(valid_blend).to be_valid
      end
    end

    describe 'when not valid' do
      it 'is not valid without a name (with null name)' do
        expect(invalid_blend).to_not be_valid
      end
    end

    xdescribe '#name' do
      it { should validate_presence_of(:name) }
    end
  end

  describe 'associations' do
    it { Blend.reflect_on_association(:varietal).macro.should  eq(:has_many) }
  end

end
