class V2::Section < V2::Resource::Base
  has_field 'id',    type: :numeric, compact: :always,  complete: :always, description: 'A unique identifier for the section'
  has_field 'name',  type: :string,  compact: :always,    complete: :always, description: 'Section name'
  has_field 'title', type: :string,  compact: :never,  complete: :always, description: 'Section title'

  @example = {
    id: 1, 
    name: 'E', 
    title: 'Inspection & Acceptance'
  }

end
