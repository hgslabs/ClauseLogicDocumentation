class V2::Clause < V2::Resource::Base
  has_field 'id',               type: :numeric, description: 'A unique identifier for the clause'
  has_field 'number',           type: :string,  description: 'Clause number'
  has_field 'referenceAllowed', type: :boolean, description: 'If clause can be incorporated by reference'
  has_field 'provision',        type: :boolean, description: 'If this is a clause'
  has_field 'regulation',       type: :object,  description: 'Parent Regulation object'
  has_field 'section',          type: :object,  description: 'UCF Section object of the clause'
  has_field 'clauseVariation',  type: :object,  description: 'Alternate or Deviation'
  has_field 'revision',         type: :object,  description: 'Clause Revision object'

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