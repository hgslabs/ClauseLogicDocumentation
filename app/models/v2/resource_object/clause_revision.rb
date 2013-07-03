class V2::ResourceObject::ClauseRevision < V2::ResourceObject::Base
  field 'id',        type: :numeric, description: 'A unique identifier for the revision'
  field 'title',     type: :string,  description: 'Clause title'
  field 'body',      type: :string,  description: 'Clause text (HTML)'
  field 'fillins',   type: :array,   complete: :some, description: 'Array of Fill-ins for the clause'
  field 'startDate', type: :string,  description: 'Effective Start Date'
  field 'endDate',   type: :string,  description: 'Effective End Date'
  field 'editable',  type: :boolean, description: 'Whether the clause is editable'

  @example = {
    id: 1,
    title: 'Clause Title',
    body: '... clause text ...',
    fillins: [V2::ResourceObject::Fillin.example], 
    startDate: '2011-01-01',
    endDate: '2013-12-31',
    editable: false
  }

end