class LCD_Digits

	def initialize
		@numbers = { 0 => { :top    => "._.",
	  							      :middle => "|.|",
			  					      :bottom => "|_|" },
								 1 => { :top    => "...",
								        :middle => "..|",
								        :bottom => "..|" },
								 2 => { :top    => "._.",
								        :middle => "._|",
								        :bottom => "|_." },
								 3 => { :top    => "._.",
								        :middle => "._|",
								        :bottom => "._|" },
								 4 => { :top    => "...",
								        :middle => "|_|",
								        :bottom => "..|" },
								 5 => { :top    => "._.",
								        :middle => "|_.",
								        :bottom => "._|" },
								 6 => { :top    => "._.",
								        :middle => "|_.",
								        :bottom => "|_|" },
								 7 => { :top    => "._.",
								        :middle => "..|",
								        :bottom => "..|" },
								 8 => { :top    => "._.",
								        :middle => "|_|",
								        :bottom => "|_|" },
								 9 => { :top    => "._.",
								        :middle => "|_|",
								        :bottom => "..|" } }
  end

	def number(digit)
		@numbers[digit][:top] + "\n" +\
		@numbers[digit][:middle] + "\n" +\
		@numbers[digit][:bottom] + "\n"
	end

	def row(digits)
		digits_s = digits.to_s
		eight_segment = ""

		[:top, :middle, :bottom].each do |level|
			digits_s.each_char {|digit| eight_segment += @numbers[digit.to_i][level] + ' '}
			eight_segment.strip!
			eight_segment += "\n"
		end

		eight_segment
	end

end