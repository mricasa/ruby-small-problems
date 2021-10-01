module Breach
	def breach
		puts "oo much majestic animal"
	end
end


class SeaMammal
	include Breach
end

flipper = SeaMammal.new

flipper.breach
puts SeaMammal.ancestors