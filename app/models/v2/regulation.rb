class V2::Regulation < V2::Resource::Base
  has_field 'id',    type: :numeric, compact: :always,  complete: :always, description: 'A unique identifier for the regulation'
  has_field 'name',  type: :string,  compact: :never,    complete: :always, description: 'Regulation name'
  has_field 'title', type: :string,  compact: :always,  complete: :always, description: 'Regulation title'
  has_field 'url',   type: :string,  compact: :never,   complete: :always, description: 'URL of regulation website'
  
  @example = {
    id: 1, 
    name: 'Federal Acquisition Regulation', 
    title: 'FAR', 
    url: 'https://www.acquisition.gov/far'
  }
  
  @compact = {
    id: 1,
    title: 'FAR'
  }

end