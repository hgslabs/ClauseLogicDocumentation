class V2::Prescription < V2::Resource::Base
  has_field 'id',         type: :numeric, description: 'A unique identifier for the prescription'
  has_field 'number',     type: :string,  description: 'Prescription number'
  has_field 'regulation', type: :object,  description: 'Parent Regulation object'
  has_field 'revision',   type: :object,  description: 'Prescription Revision object'

  @example = {
    id: 1, 
    number: '2.201', 
    regulation: V2::Regulation.compact,
    revision: V2::PrescriptionRevision.example
  }

end