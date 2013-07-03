class V2::Fillin < V2::Resource::Base
  has_field 'id', type: :numeric, compact: :always,  complete: :always, description: 'A unique identifier for the fillin'

  @example = {
    id: 1
  }
  
end