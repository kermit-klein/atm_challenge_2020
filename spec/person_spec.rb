require './lib/person'
require './lib/atm'

describe Person do
    subject { described_class.new(name: 'Thomas') }
    it 'is expected to have a :name on initialize' do 
        expect(subject.name).not_to be nil
    end
    it 'is expected to raise an error if no name is set' do
        expect { described_class.new }.to raise_error 'A name is required'
      end
end


    