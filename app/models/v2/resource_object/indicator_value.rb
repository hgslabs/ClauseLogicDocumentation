class V2::ResourceObject::IndicatorValue < V2::ResourceObject::Base
  field 'id',    type: :numeric, description: 'A unique identifier for the indicator value'
  field 'value', type: :string,  description: 'value'
  
  @example = {
    id: 1,
    value: 'Award'
  }
  
end