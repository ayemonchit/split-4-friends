require 'bill_splitter/bill'

RSpec.describe Bill do
	let(:bill) { Bill.new({ total_friends: 3, bill_amount: 0 }) }

	it 'has friends' do
		expect(bill.friends.length).to eq 3
	end

	it 'has bill_amount' do
		expect(bill.bill_amount).to eq 0
	end

	describe 'when split_by_items is not given' do
		before(:each) do
			bill.bill_amount = 240
		end

		it 'split bill equally between 3 friends' do		
			bill.split_bill

			expect(bill.friends[0]).to eq 80
			expect(bill.friends[1]).to eq 80
			expect(bill.friends[2]).to eq 80
		end

		context 'when new friend is added' do
			it 'split bill equally between 4 friends' do
				bill.add_friend
				bill.split_bill

				expect(bill.friends[0]).to eq 60
				expect(bill.friends[1]).to eq 60
				expect(bill.friends[2]).to eq 60
				expect(bill.friends[3]).to eq 60
			end
		end
	end

	describe 'when split_by_items is true' do
		
	end
end 
