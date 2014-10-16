require "haml_ui/version"

module HamlUi
  # Your code goes here...
  class HamlUI 
  	def self.call(template)
  		binding.pry

  		#template.source.inspect.html_safe
      # if (ActionPack::VERSION::MAJOR >= 4) && template.respond_to?(:type)
        @haml_ = ActionView::Template.registered_template_handler(:haml)
        @haml_compiled = @haml_.call(template)    
        @gen = <<-SOURCE
  		begin;#{@haml_compiled};end
  		SOURCE
      #s.split /(?=[A-Z])/
  		@gen.gsub(/largeButton/, "btn btn-lg")
    end

  end
end

ActionView::Template.register_template_handler(:hui, HamlUi::HamlUI)
