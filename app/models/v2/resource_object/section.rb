class V2::ResourceObject::Section < V2::ResourceObject::Base
  field 'id',    type: :numeric, compact: :always, description: 'A unique identifier for the section'
  field 'name',  type: :string,  compact: :always, description: 'Section name'
  field 'title', type: :string,  compact: :never,  description: 'Section title'

  @example = {
    id: 1, 
    name: 'E', 
    title: 'Inspection & Acceptance'
  }
  
  @compact = {
    id: 1, 
    name: 'E'
  }

end
