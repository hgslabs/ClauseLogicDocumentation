class V2::ClauseRevision < V2::Resource::Base
  has_field 'id',        type: :numeric, compact: :always,  complete: :always, description: 'A unique identifier for the revision'
  has_field 'title',     type: :string,  compact: :always,  complete: :always, description: 'Clause title'
  has_field 'body',      type: :string,  compact: :some,    complete: :always, description: 'Clause text (HTML)'
  has_field 'startDate', type: :string,  compact: :always,  complete: :always, description: 'Effective Start Date'
  has_field 'endDate',   type: :string,  compact: :never,   complete: :always, description: 'Effective End Date'
  has_field 'editable',  type: :boolean, compact: :never,   complete: :always, description: 'Whether the clause is editable'

  @example = {
    id: 1,
    title: 'Clause Title',
    body: '... clause text ...', 
    startDate: '2011-01-01',
    endDate: '2013-12-31',
    editable: false
  }

end