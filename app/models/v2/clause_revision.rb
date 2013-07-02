class V2::ClauseRevision < V2::Resource::Base
  has_field 'id',    type: :numeric, compact: :always,  complete: :always, description: 'A unique identifier for the regulation'
  has_field 'name',  type: :string,  compact: :some,    complete: :always, description: 'Regulation name'
  has_field 'title', type: :string,  compact: :always,  complete: :always, description: 'Regulation title'
  has_field 'url',   type: :string,  compact: :never,   complete: :always, description: 'URL of regulation website'
end