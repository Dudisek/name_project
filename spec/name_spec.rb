require 'spec_helper.rb'

RSpec.describe Name do
  name = Name.new('SIMON EDWARDS/MATTHEWS MR')
  name1 = Name.new('SIMON EDWARDS/MR MATTHEWS')

  describe 'name' do
    it 'returns first name from example name' do
      expect(name.first_name).to eq 'Matthews'
    end

    it 'returns first name from example name1' do
      expect(name1.first_name).to eq 'Matthews'
    end

    it 'returns family name' do
      expect(name.family_name).to eq 'Simon Edwards'
    end

    it 'returns full name in array' do
      expect(name.full_name).to eq ['Simon Edwards', 'Matthews']
    end
  end
end
