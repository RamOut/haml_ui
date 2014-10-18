require "haml_ui/version"
require "haml_ui/engine"

module HamlUi
  # Your code goes here...
  class HamlUi 
  	def self.call(template)

      @haml_ = ActionView::Template.registered_template_handler(:haml)
      @haml_compiled = @haml_.call(template)    
      @html_string  = <<-SOURCE
  		begin;#{@haml_compiled};end
  		SOURCE
      #s.split /(?=[A-Z])/
  		#@gen.gsub(/largeButton/, "btn btn-lg")
      Engine.new(@html_string)
    end

  end
end

ActionView::Template.register_template_handler(:hui, HamlUi::HamlUi)
