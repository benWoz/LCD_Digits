require 'lcd_digits'

RSpec.describe LCD_Digits do 
	def lcd_digit
  	LCD_Digits.new
  end

	describe "each digit as a 3x3 string" do
		it "takes '0' as a number" do
  	  expect(lcd_digit.number(0)).to eq "._.\n|.|\n|_|\n"
	  end

	  it "takes '1' as a number" do
	  	expect(lcd_digit.number(1)).to eq "...\n..|\n..|\n"
	  end
	end

	describe "multiple digits in a row" do
		it "represents 1 digit" do
			expect(lcd_digit.row(1)).to eq "...\n"\
																		 "..|\n"\
																		 "..|\n"
		end
		it "represents 2 digits" do
			expect(lcd_digit.row(10)).to eq "..." + ' ' + "._.\n"\
																		  "..|" + ' ' + "|.|\n"\
																		  "..|" + ' ' + "|_|\n"
		end
		it "represents all digits" do
			expect(lcd_digit.row("0123456789")).to eq \
			  "._. ... ._. ._. ... ._. ._. ._. ._. ._.\n" + \
				"|.| ..| ._| ._| |_| |_. |_. ..| |_| |_|\n" + \
				"|_| ..| |_. ._| ..| ._| |_| ..| |_| ..|\n"
		end
		it "represents '910'" do
			expect(lcd_digit.row(910)).to eq \
			  "._. ... ._.\n" + \
				"|_| ..| |.|\n" + \
				"..| ..| |_|\n"
		end
	end

end