class V2::ResourceObject::ClauseVariation < V2::ResourceObject::Base
  field 'type', type: :string, description: 'Variation Type'
  field 'name', type: :string, description: 'Variation Name'
  
  @example = {
    type: 'Alternate', 
    name: 'Alternate I'
  }
  
end