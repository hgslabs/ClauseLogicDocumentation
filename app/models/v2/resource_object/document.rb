class V2::ResourceObject::Document < V2::ResourceObject::Base
  field 'id',          type: :numeric, description: 'A unique identifier for the document'
  field 'number',      type: :string,  description: 'Document number'
  field 'regulations', type: :array,   description: 'Applicable Regulations'

  @example = {
    id: 1,
    number: 'ABC049-13-0001',
    regulations: [ V2::ResourceObject::DocumentRegulation.example ]
  }

end
