class Student

	attr_accessor :badges

	def initialize
		@badges = []
	end

	def award(badge)
		@badges << badge.to_s
	end

  def method_missing(name, *args)
  	if (name.to_s.match(/^has_.+?\?/))
  		self.class.send(:define_method, name) do
  			@badges.include?(get_badge_name(name)) ? true : false
  		end
  		self.send(name)
    else
    	puts "Sorry"
    end
  end

  private

  def get_badge_name(method_name)
  	method_name.to_s[4..-2]
  end

end
