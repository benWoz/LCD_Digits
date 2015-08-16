class LCD_Digits

	def initialize
		@numbers = { 0 => { :top    => ".-.\n",
	  							      :middle => "|.|\n",
			  					      :bottom => "|_|\n" },
								 1 => { :top    => "...\n",
								        :middle => "..|\n",
								        :bottom => "..|\n" } }
  end

	def number(digit)
		@numbers[digit][:top] + \
		@numbers[digit][:middle] + \
		@numbers[digit][:bottom]
	end

	def row(digits)
		digits_s = digits.to_s
		eight_segment = ""
		digits_s.each_char {|digit| eight_segment += @numbers[digit.to_i][:top]}
		digits_s.each_char {|digit| eight_segment += @numbers[digit.to_i][:middle]}
		digits_s.each_char {|digit| eight_segment += @numbers[digit.to_i][:bottom]}
		eight_segment
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
		it "represents 1 digit" do
			expect(lcd_digit.row(1)).to eq "...\n"\
																		  "..|\n"\
																		  "..|\n"
		end
		it "represents 2 digits" do
			expect(lcd_digit.row(01)).to eq ".-." + ' ' + "...\n"\
																		  "|.|" + ' ' + "..|\n"\
																		  "|_|" + ' ' + "..|\n"
		end
	end

end