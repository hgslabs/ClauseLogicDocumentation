class V2::ResourceObject::Fillin < V2::ResourceObject::Base
  field 'id',       type: :numeric, description: 'A unique identifier for the fill-in'
  field 'name',     type: :numeric, description: 'Fill-In name'
  field 'source',   type: :numeric, description: 'Government or Vendor'
  field 'dataType', type: :numeric, description: 'Text, Number, Currency, Date, etc.'
  field 'options',  type: :numeric, complete: :some, description: 'Pre-defined options for the fill-in'

  @example = {
    id: 1,
    name: 'Agency',
    source: 'Government',
    dataType: 'text',
    options: ["NASA", "Department of Defense", "Coast Guard"]
  }
  
end