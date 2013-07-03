class V2::ClauseRevision < V2::Resource::Base
  has_field 'id',        type: :numeric, description: 'A unique identifier for the revision'
  has_field 'title',     type: :string,  description: 'Clause title'
  has_field 'body',      type: :string,  description: 'Clause text (HTML)'
  has_field 'fillins',   type: :array,   complete: :some, description: 'Array of Fill-ins for the clause'
  has_field 'startDate', type: :string,  description: 'Effective Start Date'
  has_field 'endDate',   type: :string,  description: 'Effective End Date'
  has_field 'editable',  type: :boolean, description: 'Whether the clause is editable'

  @example = {
    id: 1,
    title: 'Clause Title',
    body: '... clause text ...',
    fillins: [V2::Fillin.example], 
    startDate: '2011-01-01',
    endDate: '2013-12-31',
    editable: false
  }

end