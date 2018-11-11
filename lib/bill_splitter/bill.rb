class Bill
	attr_accessor :bill_amount, :friends, :split_by_items

	def initialize(opts = {})
		@friends = Array.new(opts[:total_friends], 0)
		@bill_amount = opts[:bill_amount]
		@split_by_items ||= false
	end

	def add_friend
		friends << 0
	end

	def split_bill
		friends.map! { |friend| bill_per_friend }
	end

	private

	def bill_per_friend
		bill_amount / friends.length
	end
end
