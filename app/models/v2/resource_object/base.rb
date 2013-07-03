module V2::ResourceObject
  class Base
    include Field
    
    @example = nil
    @compact = nil
    
    def self.example
      @example
    end
    
    def self.compact
      @compact
    end
    
  end
end