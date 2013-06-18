class V1::ResourcesController < DocumentationController
  
  def index
  end
  
  def library_clauses
    @response = resource_xml('library_clauses')
    @response_pagination = resource_xml('library_clauses_pagination')
  end
  
  def library_clause
    @response = resource_xml('library_clause')
  end
  
  def library_clause_revisions
    @response = resource_xml('library_clause_revisions')
  end

  def library_indicators
    @response = resource_xml('library_indicators')
    @response_pagination = resource_xml('library_indicators_pagination')
  end
  
  def library_indicator
    @response = resource_xml('library_indicator')
  end
 
  def library_prescriptions
    @response = resource_xml('library_prescriptions')
    @response_pagination = resource_xml('library_prescriptions_pagination')
  end
  
  def library_prescription
    @response = resource_xml('library_prescription')
  end
  
  def library_prescription_revisions
    @response = resource_xml('library_prescription_revisions')
  end
  
  def library_regulations
    @response = resource_xml('library_regulations')
    @response_pagination = resource_xml('library_regulations_pagination')
  end
  
  def library_regulation
    @response = resource_xml('library_regulation')
  end

  def library_sections
    @response = resource_xml('library_sections')
  end

  def library_section
    @response = resource_xml('library_section')
  end
  
  def pd_clats
    @response = resource_xml('pd_clats')
  end
  
  def pd_clat
    @response = resource_xml('pd_clat')
  end
  
  def pd_clat_create
    @request = resource_request_xml('pd_clat_create')
    @response = resource_xml('pd_clat_create')
  end
  
  def pd_clat_expire
    @response = resource_xml('pd_clat_expire')
  end
  
  def pd_clat_extend
    @response = resource_xml('pd_clat_extend')
  end
  
  def pd_clauses
    @response = resource_xml('pd_clauses')
  end
  
  def pd_clause
    @response = resource_xml('pd_clause')
  end
  
  def pd_clause_create
    @request = resource_request_xml('pd_clause_create')
    @response = resource_xml('pd_clause_create')
  end
  
  def pd_clause_update
    @request = resource_request_xml('pd_clause_update')
    @response = resource_xml('pd_clause_update')
  end
  
  def pd_clause_delete
    @response = resource_xml('pd_clause_delete')
  end
  
  def pd_indicators
    @response = resource_xml('pd_indicators')
  end
  
  def pd_indicator
    @response = resource_xml('pd_indicator')
  end
  
  def pd_indicators_update
    @request = resource_request_xml('pd_indicators_update')
    @response = resource_xml('pd_indicators_update')
  end
  
  def pd_indicator_update
    @request = resource_request_xml('pd_indicator_update')
    @response = resource_xml('pd_indicator_update')
  end
  
  def pd_procurement_documents
    @response = resource_xml('pd_procurement_documents')
  end
  
  def pd_procurement_document
    @response = resource_xml('pd_procurement_document')
  end
  
  def pd_procurement_document_create
    @request = resource_request_xml('pd_procurement_document_create')
    @response = resource_xml('pd_procurement_document_create')
  end
  
  def pd_procurement_document_update
    @request = resource_request_xml('pd_procurement_document_update')
    @response = resource_xml('pd_procurement_document_update')
  end
  
  def pd_procurement_document_launch_gui
    @response = resource_xml('pd_procurement_document_launch_gui')
  end
  
  def pd_regulations
    @response = resource_xml('pd_regulations')
  end
  
  def pd_regulations_update
    @request = resource_request_xml('pd_regulations_update')
    @response = resource_xml('pd_regulations_update')
  end

  def general_timestamp
    @response = resource_xml('general_timestamp')
  end
  
end
