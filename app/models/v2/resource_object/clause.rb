class V2::ResourceObject::Clause < V2::ResourceObject::Base
  field 'id',               type: :numeric, description: 'A unique identifier for the clause'
  field 'number',           type: :string,  description: 'Clause number'
  field 'referenceAllowed', type: :boolean, description: 'If clause can be incorporated by reference'
  field 'provision',        type: :boolean, description: 'If this is a clause'
  field 'regulation',       type: :object,  description: 'Parent Regulation object'
  field 'section',          type: :object,  description: 'UCF Section object of the clause'
  field 'clauseVariation',  type: :object,  description: 'Alternate or Deviation'
  field 'revision',         type: :object,  description: 'Clause Revision object'

  @example = {
    id: 1, 
    number: '2.201', 
    referenceAllowed: true,
    provision: false,
    regulation: V2::ResourceObject::Regulation.compact,
    section: V2::ResourceObject::Section.compact,
    clauseVariation: V2::ResourceObject::ClauseVariation.example,
    revision: V2::ResourceObject::ClauseRevision.example
  }

end