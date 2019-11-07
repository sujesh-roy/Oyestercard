require './lib/oyestercard'

describe Oyestercard do
    let (:oyestercard) { Oyestercard.new }

    it 'creates an instance of Oyestercard' do
        expect(oyestercard).to be_instance_of(Oyestercard)
        end
    it 'Checks if balance is 0' do
        expect(oyestercard.balance).to eq 0
        end
    it 'Adds to the balance' do
        expect(oyestercard).to respond_to(:topup)
        end
    it 'Limits the topup value to be a maximum of 90' do
        limit = Oyestercard::Limit
        subject.topup(limit)
        expect{ subject.topup 1 }.to raise_error "Please limit your amount to 90"
        end
end
