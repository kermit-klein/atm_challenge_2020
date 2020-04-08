require './lib/person'
require './lib/atm'
require "date"

describe Person do
    subject { described_class.new(name: 'Thomas') }
    it 'is expected to have a :name on initialize' do 
        expect(subject.name).not_to be nil
    end

    it 'is expected to raise an error if no name is set' do
        expect { described_class.new }.to raise_error 'A name is required'
    end

    it 'is expected to have a :cash attribute with the value of 0 on initialize' do
        expect(subject.cash).to eq 0
    end

    it 'is expected to have a :account attribute' do
        expect(subject.account).to be nil
    end

    describe 'can create an Account' do
        # As a Person,
        # to be able to use banking services to manage my funds,
        # I would like to be able to create a bank account
        before { subject.create_account }
        it 'of Account class ' do
          expect(subject.account).to be_an_instance_of Account
        end
    
        
      end
    end


    