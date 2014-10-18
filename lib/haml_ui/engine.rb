require "haml_ui/Parse_css"

class Engine
	
	def initialize(html_source)
	  @parser = Parse_css.new(html_source)	
	end
	
	
end