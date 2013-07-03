class V2::Clause < V2::Resource::Base
  has_field 'id',               type: :numeric, compact: :always,  complete: :always, description: 'A unique identifier for the clause'
  has_field 'number',           type: :string,  compact: :never,   complete: :always, description: 'Clause number'
  has_field 'referenceAllowed', type: :boolean, compact: :some,    complete: :always, description: 'If clause can be incorporated by reference'
  has_field 'provision',        type: :boolean, compact: :always,  complete: :always, description: 'If this is a clause'
  has_field 'regulation',       type: :object,  compact: :never,   complete: :always, description: 'Parent Regulation object'
  has_field 'section',          type: :object,  compact: :never,   complete: :always, description: 'UCF Section object of the clause'
  has_field 'clauseVariation',  type: :object,  compact: :never,   complete: :always, description: 'Alternate or Deviation'
  has_field 'revision',         type: :object,  compact: :never,   complete: :always, description: 'Clause Revision object'

  @example = {
    id: 1, 
    number: '2.201', 
    referenceAllowed: true,
    provision: false,
    regulation: V2::Regulation.compact,
    section: V2::Section.compact,
    clauseVariation: V2::ClauseVariation.example,
    revision: V2::ClauseRevision.example
  }

end