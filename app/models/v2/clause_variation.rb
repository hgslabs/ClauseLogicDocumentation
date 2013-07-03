class V2::ClauseVariation < V2::Resource::Base
  has_field 'type', type: :string, compact: :always, complete: :always, description: 'Variation Type'
  has_field 'name', type: :string, compact: :always, complete: :always, description: 'Variation Name'
  
  @example = {
    type: 'Alternate', 
    name: 'Alternate I'
  }
  
end