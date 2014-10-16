require "haml_ui/version"

module HamlUi
  # Your code goes here...
  class HamlUI 
  	def self.call(template)
  		binding.pry

  	  options = Haml::Template.options.dup
      # if (ActionPack::VERSION::MAJOR >= 4) && template.respond_to?(:type)
      #   options[:mime_type] = template.type
      # elsif template.respond_to? :mime_type
      #   options[:mime_type] = template.mime_type
      # end
      # options[:filename] = template.identifier


  		@ram = "rambabu"
  		@tem = template
  		@king = @source.to_s
  		#template.source.inspect.html_safe
  		#@ce = "%h1 Rambabu King"
  		@hui_source = template.source
  		#ActionView::Template.registered_template_handler(:haml).call(template)
  		Haml::Engine.new(@hui_source, options).compiler.precompiled_with_ambles([])
    end

  end
end

ActionView::Template.register_template_handler(:hui, HamlUi::HamlUI)
