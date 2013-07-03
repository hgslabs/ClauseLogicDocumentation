class V2::ResourceObject::Prescription < V2::ResourceObject::Base
  field 'id',         type: :numeric, description: 'A unique identifier for the prescription'
  field 'number',     type: :string,  description: 'Prescription number'
  field 'regulation', type: :object,  description: 'Parent Regulation object'
  field 'revision',   type: :object,  description: 'Prescription Revision object'

  @example = {
    id: 1, 
    number: '2.201', 
    regulation: V2::ResourceObject::Regulation.compact,
    revision: V2::ResourceObject::PrescriptionRevision.example
  }

end