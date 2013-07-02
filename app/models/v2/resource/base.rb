module V2::Resource
  class Base
    include Field
    
    @example = nil
    
    def self.example
      @example
    end
    
  end
end