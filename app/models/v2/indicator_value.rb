class V2::IndicatorValue < V2::Resource::Base
  has_field 'id',    type: :numeric, description: 'A unique identifier for the indicator value'
  has_field 'value', type: :string,  description: 'value'
  
  @example = {
    id: 1,
    value: 'Award'
  }
  
end