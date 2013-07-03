class V2::ResourceObject::PrescriptionRevision < V2::ResourceObject::Base
  field 'id',        type: :numeric, description: 'A unique identifier for the revision'
  field 'body',      type: :string,  description: 'Prescription text (HTML)'
  field 'startDate', type: :string,  description: 'Effective Start Date'
  field 'endDate',   type: :string,  description: 'Effective End Date'
  
  @example = {
    id: 1, 
    body: '... prescription text ...', 
    startDate: '2011-01-01',
    endDate: '2013-12-31'
  }
  
end