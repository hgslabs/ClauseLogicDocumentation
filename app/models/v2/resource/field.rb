module V2::Resource
  module Field
    
    def self.included(base)
      base.class_attribute :_fields, instance_accessor: false
      base._fields = {}
      base.extend(ClassMethods)
    end
    
    module ClassMethods

      def has_field(name, options = {})
        self._fields[name] = {} if self._fields[name].nil?
        self._fields[name][:type] = options[:type] || :string
        self._fields[name][:compact] = options[:compact] || false
        self._fields[name][:complete] = options[:complete] || false
        self._fields[name][:example] = options[:example]
        self._fields[name][:description] = options[:description] || "" 
      end
      
      def fields
        self._fields
      end
    end
  end
end