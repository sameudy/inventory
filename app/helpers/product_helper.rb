module ProductHelper
	def format_price(product)
		if product.price<20
			content_tag(:strong, 'Flop!')
		else
			number_to_currency(product.price)
		end
	end
end
