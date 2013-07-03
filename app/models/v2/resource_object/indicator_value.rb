class V2::ResourceObject::IndicatorValue < V2::ResourceObject::Base
  has_field 'id',    type: :numeric, description: 'A unique identifier for the indicator value'
  has_field 'value', type: :string,  description: 'value'
  
  @example = {
    id: 1,
    value: 'Award'
  }
  
end