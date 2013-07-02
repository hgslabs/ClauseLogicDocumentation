class V2::IndicatorValue < V2::Resource::Base
  has_field 'id',    type: :numeric, compact: :always,  complete: :always, description: 'A unique identifier for the indicator'
  has_field 'name',  type: :string,  compact: :some,    complete: :always, description: 'Indicator name'
  has_field 'dataType', type: :string,  compact: :always,  complete: :always, description: 'Data Type'
  has_field 'constraint', type: :string, compact: :never, complete: :always, description: 'Constraint'
  has_field 'values', type: :array, compact: :some, complete: :some, description: 'Pre-defined values'
  
  @example = {
    id: 1,
    value: 'Award'
  }
  
end