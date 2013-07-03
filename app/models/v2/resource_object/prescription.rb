class V2::ResourceObject::Prescription < V2::ResourceObject::Base
  has_field 'id',         type: :numeric, description: 'A unique identifier for the prescription'
  has_field 'number',     type: :string,  description: 'Prescription number'
  has_field 'regulation', type: :object,  description: 'Parent Regulation object'
  has_field 'revision',   type: :object,  description: 'Prescription Revision object'

  @example = {
    id: 1, 
    number: '2.201', 
    regulation: V2::ResourceObject::Regulation.compact,
    revision: V2::ResourceObject::PrescriptionRevision.example
  }

end