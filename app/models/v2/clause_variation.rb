class V2::ClauseVariation < V2::Resource::Base
  has_field 'type', type: :string, description: 'Variation Type'
  has_field 'name', type: :string, description: 'Variation Name'
  
  @example = {
    type: 'Alternate', 
    name: 'Alternate I'
  }
  
end