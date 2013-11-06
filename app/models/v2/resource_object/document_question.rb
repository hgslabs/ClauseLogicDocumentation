class V2::ResourceObject::DocumentQuestion < V2::ResourceObject::Base
  field 'id',        type: :numeric, description: 'A unique identifier for the question'
  field 'indicator', type: :string, description: 'Indicator Name'
  field 'question',  type: :string, description: 'Question Text'
  field 'answer',     type: :object, description: 'Selected Value'
  field 'values',    type: :array, description: 'Array of Selected Values (only Pick Many)'
  field 'not_applicable', type: :boolean, description: 'TRUE if none of the pre-defined values are applicable'
  field 'set_via_api', type: :boolean, description: 'TRUE if answer was specified via the API. NULL for Pick Many (a set_via_api attribute will exist for each selected value in the values array.'

  @example = {
    id: 1,
    indicator: 'Document Type',
    question: 'Is this a solicitation or an award?',
    answer: 1,
    values: [],
    not_applicable: false,
    set_via_api: true
  }

end
