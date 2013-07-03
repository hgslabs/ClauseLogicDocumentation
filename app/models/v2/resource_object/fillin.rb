class V2::ResourceObject::Fillin < V2::ResourceObject::Base
  has_field 'id',       type: :numeric, description: 'A unique identifier for the fill-in'
  has_field 'name',     type: :numeric, description: 'Fill-In name'
  has_field 'source',   type: :numeric, description: 'Government or Vendor'
  has_field 'dataType', type: :numeric, description: 'Text, Number, Currency, Date, etc.'
  has_field 'options',  type: :numeric, complete: :some, description: 'Pre-defined options for the fill-in'

  @example = {
    id: 1,
    name: 'Agency',
    source: 'Government',
    dataType: 'text',
    options: ["NASA", "Department of Defense", "Coast Guard"]
  }
  
end