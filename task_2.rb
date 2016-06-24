require 'rubygems'
require 'mechanize'

class ExchangeUSD

	attr_reader   :dollar, :path
	attr_writer   :dollar
	
	def initialize
		@a = Mechanize.new
		@path = 'div.switcher_view.cbr_view table.table.horizontal tbody tr td'
	end

	def parser
		page = @a.get('http://www.raiffeisen.ru/ru/currency_rates/')
		review_meta = page.search(@path)
		@dollar.to_f*review_meta[3].text.to_f
	end
end		

exchange = ExchangeUSD.new
exchange.dollar = gets
puts exchange.parser

