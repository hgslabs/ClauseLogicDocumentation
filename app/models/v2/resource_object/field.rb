module V2::ResourceObject
  module Field
    
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods

      def field(name, options = {})
        @_fields ||= {}
        @_fields[name] = {} if @_fields[name].nil?
        @_fields[name][:type] = options[:type] || :string
        @_fields[name][:compact] = options[:compact] || :never
        @_fields[name][:complete] = options[:complete] || :always
        @_fields[name][:example] = options[:example]
        @_fields[name][:description] = options[:description] || "" 
      end
      
      def fields
        @_fields
      end
    end
    
  end
end