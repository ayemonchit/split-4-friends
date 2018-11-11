require 'split-4-friends/models/bill'
require 'split-4-friends/models/friend'
require 'split-4-friends/services/bill_splitter'

RSpec.describe BillSplitter do
  let(:bill) { Bill.new(001, 240) }

  let(:friends) do
    [
      Friend.new('Mary'),
      Friend.new('Jame'),
      Friend.new('Tom')
    ]
  end

  let(:bill_splitter) { BillSplitter.new(bill, friends) }

  it 'each friend has equal amount of debt' do
    bill_splitter.split

    expect(bill_splitter.friends[0].debt).to eq 80
    expect(bill_splitter.friends[1].debt).to eq 80
    expect(bill_splitter.friends[2].debt).to eq 80
  end

  #   context 'when new friend is added' do
  #     it 'split bill equally between 4 friends' do
  #       bill.add_friend
  #       bill.split_bill

  #       expect(bill.friends[0]).to eq 60
  #       expect(bill.friends[1]).to eq 60
  #       expect(bill.friends[2]).to eq 60
  #       expect(bill.friends[3]).to eq 60
  #     end
  #   end
  # end

  # describe 'when split_by_items is true' do
  # end
end 
