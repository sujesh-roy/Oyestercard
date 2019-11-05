require './lib/oyestercard'

describe Oyestercard do
    it 'creates an instance of Oyestercard' do
        oyestercard = Oyestercard.new
        expect(oyestercard).to be_instance_of(Oyestercard)
        end
    
end
