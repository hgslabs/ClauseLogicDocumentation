class V2::ResourceObject::ClauseVariation < V2::ResourceObject::Base
  has_field 'type', type: :string, description: 'Variation Type'
  has_field 'name', type: :string, description: 'Variation Name'
  
  @example = {
    type: 'Alternate', 
    name: 'Alternate I'
  }
  
end