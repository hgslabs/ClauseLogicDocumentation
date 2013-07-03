module V2::Resource
  module RequestParam
    
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods

      def request_param(name, options = {})
        @_request_params ||= {}
        @_request_params[name] = {} if @_request_params[name].nil?
        @_request_params[name][:type] = options[:type] || :string
        @_request_params[name][:compact] = options[:compact] || :never
        @_request_params[name][:complete] = options[:complete] || :always
        @_request_params[name][:example] = options[:example]
        @_request_params[name][:description] = options[:description] || "" 
      end
      
      def request_params
        @_request_params
      end
    end
    
  end
end