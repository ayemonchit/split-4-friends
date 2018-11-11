class BillSplitter
	attr_accessor :bill, :friends, :is_equally

	def initialize(bill, friends, opts = {})
		@bill = bill
		@friends = friends
		@item = opts[:item]
		@is_equally = opts[:is_equally] || true
	end

	def split
		is_equally ? split_equally : split_by_items
		puts friends.inspect
	end

	private

	def split_equally
		friends.each { |friend| friend.debt = bill.total / friends.length }
	end

	def split_by_items
	end
end
