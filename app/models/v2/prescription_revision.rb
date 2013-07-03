class V2::PrescriptionRevision < V2::Resource::Base
  has_field 'id',        type: :numeric, description: 'A unique identifier for the revision'
  has_field 'body',      type: :string,  description: 'Prescription text (HTML)'
  has_field 'startDate', type: :string,  description: 'Effective Start Date'
  has_field 'endDate',   type: :string,  description: 'Effective End Date'
  
  @example = {
    id: 1, 
    body: '... prescription text ...', 
    startDate: '2011-01-01',
    endDate: '2013-12-31'
  }
  
end