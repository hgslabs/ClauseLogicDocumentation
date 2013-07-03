class V2::ResourceObject::Indicator < V2::ResourceObject::Base
  field 'id',         type: :numeric, description: 'A unique identifier for the indicator'
  field 'name',       type: :string,  description: 'Indicator name'
  field 'dataType',   type: :string,  description: 'Data Type'
  field 'constraint', type: :string,  description: 'Constraint'
  field 'values',     type: :array,   complete: :some, description: 'Pre-defined values'
  
  @example = {
    id: 1, 
    name: 'Document Type',
    dataType: 'text',
    constraint: 'Pick Many',
    values: [ V2::ResourceObject::IndicatorValue.example ]
  }
end