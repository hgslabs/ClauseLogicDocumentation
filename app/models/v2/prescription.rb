class V2::Prescription < V2::Resource::Base
  has_field 'id',    type: :numeric, compact: :always,  complete: :always, description: 'A unique identifier for the prescription'
  has_field 'number',  type: :string,  compact: :some,    complete: :always, description: 'Prescription number'
  has_field 'regulation', type: :object,  compact: :always,  complete: :always, description: 'Parent Regulation object'
  has_field 'revision',   type: :object,  compact: :never,   complete: :always, description: 'Prescription Revision object'

  @example = {
    id: 1, 
    number: '2.201', 
    regulation: V2::Regulation.compact,
    revision: V2::PrescriptionRevision.example
  }

end