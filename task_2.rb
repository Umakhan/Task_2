require 'rubygems'
require 'mechanize'

a = Mechanize.new

page = a.get('http://www.raiffeisen.ru/ru/currency_rates/')
	
	b = gets

path = 'div.switcher_view.cbr_view table.table.horizontal tbody tr td'
review_meta = page.search(path)
	
	puts b.to_f*review_meta[3].text.to_f
		
