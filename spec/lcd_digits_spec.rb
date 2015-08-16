class LCD_Digits

	def initialize
		@numbers = {
			0 => ".-.\n" +
			     "|.|\n" +
			     "|_|\n",

			1 => "...\n" +
			     "..|\n" + 
			     "..|\n"
		}
  end

	def number(digit)
		@numbers[digit]
	end

	def row(digits)
	end

end

RSpec.describe LCD_Digits do 
	def lcd_digit
  	LCD_Digits.new
  end

	describe "each digit as a 3x3 string" do
		it "takes '0' as a number" do
  	  expect(lcd_digit.number(0)).to eq ".-.\n|.|\n|_|\n"
	  end

	  it "takes '1' as a number" do
	  	expect(lcd_digit.number(1)).to eq "...\n..|\n..|\n"
	  end
	end

	describe "multiple digits in a row" do
		it "represents 2 digits" do
			expect(lcd_digit.row(01)).to eq ".-." + ' ' + "...\n"\
																		  "|.|" + ' ' + "..|\n"\
																		  "|_|" + ' ' + "..|\n"
		end
	end

end