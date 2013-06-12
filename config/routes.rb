ClauseLogicDocumentation::Application.routes.draw do

  get "tutorial/index"

  root :to => "welcome#index"
    
  # Resource Objects Documentation
  get 'resource_objects' => "resource_objects#index"
  get 'resource_objects/library/clause' => "resource_objects#library_clause"
  get 'resource_objects/library/clause_revision' => "resource_objects#library_clause_revision"
  get 'resource_objects/library/clause_variation' => "resource_objects#library_clause_variation"
  get 'resource_objects/library/indicator' => "resource_objects#library_indicator"
  get 'resource_objects/library/indicator_value' => "resource_objects#library_indicator_value"
  get 'resource_objects/library/prescription' => "resource_objects#library_prescription"
  get 'resource_objects/library/prescription_revision' => "resource_objects#library_prescription_revision"
  get 'resource_objects/library/regulation' => "resource_objects#library_regulation"
  get 'resource_objects/library/section' => "resource_objects#library_section"
  get 'resource_objects/procurement_document/clat' => "resource_objects#pd_clat"
  get 'resource_objects/procurement_document/clause' => "resource_objects#pd_clause"
  get 'resource_objects/procurement_document/indicator' => "resource_objects#pd_indicator"
  get 'resource_objects/procurement_document/indicator_value' => "resource_objects#pd_indicator_value"
  get 'resource_objects/procurement_document/procurement_document' => "resource_objects#pd_procurement_document"
  get 'resource_objects/procurement_document/regulation' => "resource_objects#pd_regulation"
    
  # Resources Documentation
  get 'resources' => "resources#index"
  get 'resources/library_clauses' => "resources#library_clauses"
  get 'resources/library_clause' => "resources#library_clause"
  get 'resources/library_clause_revisions' => "resources#library_clause_revisions"
  get 'resources/library_indicators' => "resources#library_indicators"
  get 'resources/library_indicator' => "resources#library_indicator"
  get 'resources/library_prescriptions' => "resources#library_prescriptions"
  get 'resources/library_prescription' => "resources#library_prescription"
  get 'resources/library_prescription_revisions' => "resources#library_prescription_revisions"
  get 'resources/library_regulations' => "resources#library_regulations"
  get 'resources/library_regulation' => "resources#library_regulation"
  get 'resources/library_sections' => "resources#library_sections"
  get 'resources/library_section' => "resources#library_section"
  get 'resources/procurement_document/clats' => "resources#pd_clats"
  get 'resources/procurement_document/clat' => "resources#pd_clat"
  get 'resources/procurement_document/clat_create' => "resources#pd_clat_create"
  get 'resources/procurement_document/clat_expire' => "resources#pd_clat_expire"
  get 'resources/procurement_document/clat_extend' => "resources#pd_clat_extend"
  get 'resources/procurement_document/clauses' => "resources#pd_clauses"
  get 'resources/procurement_document/clause' => "resources#pd_clause"
  get 'resources/procurement_document/clause_create' => "resources#pd_clause_create"
  get 'resources/procurement_document/clause_update' => "resources#pd_clause_update"
  get 'resources/procurement_document/clause_delete' => "resources#pd_clause_delete"
  get 'resources/procurement_document/indicators' => "resources#pd_indicators"
  get 'resources/procurement_document/indicator' => "resources#pd_indicator"
  get 'resources/procurement_document/indicators_update' => "resources#pd_indicators_update"
  get 'resources/procurement_document/indicator_update' => "resources#pd_indicator_update"
  get 'resources/procurement_document/procurement_documents' => "resources#pd_procurement_documents"
  get 'resources/procurement_document/procurement_document' => "resources#pd_procurement_document"
  get 'resources/procurement_document/procurement_document_create' => "resources#pd_procurement_document_create"
  get 'resources/procurement_document/procurement_document_update' => "resources#pd_procurement_document_update"
  get 'resources/procurement_document/procurement_document_launch_gui' => "resources#pd_procurement_document_launch_gui"
  get 'resources/procurement_document/regulations' => "resources#pd_regulations"
  get 'resources/procurement_document/regulations_update' => "resources#pd_regulations_update"
  get 'resources/general/timestamp' => "resources#general_timestamp"

  get 'authentication/request_types' => "auth#request_types"
  get 'authentication/signature' => "auth#signature"
    
  get 'guides/create_procurement_document' => "guides#create_procurement_document"
  get 'guides/specify_indicators' => "guides#specify_indicators"
  get 'guides/specify_regulations' => "guides#specify_regulations"
  get 'guides/launch_gui' => "guides#launch_gui"
  get 'guides/api_environments' => 'guides#api_environments'
  get 'guides/overview' => "guides#overview"
  
  # Tutorials
  get 'tutorials/create_procurement_document' => "tutorials#create_procurement_document"
  get 'tutorials/applying_regulations' => "tutorials#applying_regulations"

  # Api Documentation
  get 'api/errors' => "api#errors"
  
end