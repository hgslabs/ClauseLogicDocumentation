class V2::Clause < V2::Resource::Base
  has_field 'id',    type: :numeric, compact: :always,  complete: :always, description: 'A unique identifier for the clause'
  has_field 'number',  type: :string,  compact: :some,    complete: :always, description: 'Clause number'
  has_field 'regulation', type: :object,  compact: :always,  complete: :always, description: 'Parent Regulation object'
  has_field 'revision',   type: :object,  compact: :never,   complete: :always, description: 'Clause Revision object'

  @example = {
    id: 1, 
    number: '2.201', 
    regulation: V2::Regulation.compact,
    revision: V2::ClauseRevision.example
  }

end