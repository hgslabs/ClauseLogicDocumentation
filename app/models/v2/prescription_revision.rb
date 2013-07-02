class V2::PrescriptionRevision < V2::Resource::Base
  has_field 'id',        type: :numeric, compact: :always,  complete: :always, description: 'A unique identifier for the revision'
  has_field 'body',      type: :string,  compact: :some,    complete: :always, description: 'Prescription text (HTML)'
  has_field 'startDate', type: :string,  compact: :always,  complete: :always, description: 'Effective Start Date'
  has_field 'endDate',   type: :string,  compact: :never,   complete: :always, description: 'Effective End Date'
  
  @example = {
    id: 1, 
    body: '... prescription text ...', 
    startDate: '2011-01-01',
    endDate: '2013-12-31'
  }
  
end