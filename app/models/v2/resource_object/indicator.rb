class V2::ResourceObject::Indicator < V2::ResourceObject::Base
  has_field 'id',         type: :numeric, description: 'A unique identifier for the indicator'
  has_field 'name',       type: :string,  description: 'Indicator name'
  has_field 'dataType',   type: :string,  description: 'Data Type'
  has_field 'constraint', type: :string,  description: 'Constraint'
  has_field 'values',     type: :array,   complete: :some, description: 'Pre-defined values'
  
  @example = {
    id: 1, 
    name: 'Document Type',
    dataType: 'text',
    constraint: 'Pick Many',
    values: [ V2::ResourceObject::IndicatorValue.example ]
  }
end