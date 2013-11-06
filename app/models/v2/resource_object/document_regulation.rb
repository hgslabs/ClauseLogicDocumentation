class V2::ResourceObject::DocumentRegulation < V2::ResourceObject::Base
  field 'regulation',  type: :object,  description: 'Parent Regulation object'
  field 'set_via_api', type: :boolean, description: 'TRUE if regulation was specified via the API'

  @example = {
    regulation: V2::ResourceObject::Regulation.compact,
    set_via_api: true
  }

end
