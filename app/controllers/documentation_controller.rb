require 'builder'

class DocumentationController < ApplicationController
  private
  
  def resource_object_xml(name)
    xml = ""
    builder = Builder::XmlMarkup.new(indent: 2, target: xml)
    case name
    when 'library_clause'
      xml_library_clause(builder)
    when 'library_clause_revision'
      xml_library_clause_revision(builder)
    when 'library_clause_variation'
      xml_library_clause_variation(builder)
    when 'library_indicator'
      xml_library_indicator(builder)
    when 'library_indicator_value'
      xml_library_indicator_value(builder)
    when 'library_prescription'
      xml_library_prescription(builder)
    when 'library_prescription_revision'
      xml_library_prescription_revision(builder)
    when 'library_regulation'
      xml_library_regulation(builder)
    when 'library_section'
      xml_library_section(builder)
    when 'pd_clat'
      xml_pd_clat(builder)
    when 'pd_clause'
      xml_pd_clause(builder)
    when 'pd_indicator'
      xml_pd_indicator(builder)
    when 'pd_indicator_none'
      xml_pd_indicator_none(builder)
    when 'pd_indicator_value'
      xml_pd_indicator_value(builder)
    when 'pd_indicator_value_none'
      xml_pd_indicator_value_none(builder)
    when 'pd_procurement_document'
      xml_pd_procurement_document(builder)
    when 'pd_regulation'
      xml_pd_regulation(builder)
    when 'library_fillins' # Version 2
      xml_library_fillins(builder)
    end
    xml
  end
  
  def resource_xml(name)
    xml = ""
    builder = Builder::XmlMarkup.new(indent: 2, target: xml)
    builder.Response do
      case name
      when 'library_clauses'
        xml_response_library_clauses(builder)
      when 'library_clauses_pagination'
        xml_response_library_clauses_pagination(builder)
      when 'library_clause'
        xml_library_clause(builder)
      when 'library_clause_revisions'
        xml_response_library_clause_revisions(builder)
      when 'library_indicator'
        xml_library_indicator(builder)
      when 'library_indicators'
        xml_response_library_indicators(builder)
      when 'library_indicators_pagination'
        xml_response_library_indicators_pagination(builder)
      when 'library_prescriptions'
        xml_response_library_prescriptions(builder)
      when 'library_prescriptions_pagination'
        xml_response_library_prescriptions_pagination(builder)
      when 'library_prescription'
        xml_library_prescription(builder)
      when 'library_prescription_revisions'
        xml_response_library_prescription_revisions(builder)
      when 'library_regulations'
        xml_response_library_regulations(builder)
      when 'library_regulations_pagination'
        xml_response_library_regulations_pagination(builder)
      when 'library_regulation'
        xml_library_regulation(builder)
      when 'library_sections'
        xml_library_sections(builder)
      when 'library_section'
        xml_library_section(builder)
      when 'pd_clats'
        xml_response_pd_clats(builder)
      when 'pd_clat'
        xml_pd_clat(builder)
      when 'pd_clat_create'
        xml_pd_clat(builder)
      when 'pd_clat_expire'
        xml_pd_clat(builder)
      when 'pd_clat_extend'
        xml_pd_clat(builder)
      when 'pd_clauses'
        xml_response_pd_clauses(builder)
      when 'pd_clause'
        xml_pd_clause(builder)
      when 'pd_clause_create'
        xml_pd_clause(builder)
      when 'pd_clause_update'
        xml_pd_clause(builder)
      when 'pd_clause_delete'
        xml_pd_clause(builder)
      when 'pd_indicators'
        xml_response_pd_indicators(builder)
      when 'pd_indicator'
        xml_pd_indicator(builder)
      when 'pd_indicators_update'
        xml_response_pd_indicators(builder)
      when 'pd_indicator_update'
        xml_pd_indicator(builder)
      when 'pd_procurement_documents'
        xml_response_pd_procurement_documents(builder)
      when 'pd_procurement_document'
        xml_pd_procurement_document(builder)
      when 'pd_procurement_document_create'
        xml_pd_procurement_document(builder)
      when 'pd_procurement_document_update'
        xml_pd_procurement_document(builder)
      when 'pd_procurement_document_launch_gui'
        xml_response_pd_procurement_document_launch_gui(builder)
      when 'pd_regulations'
        xml_response_pd_regulations(builder)
      when 'pd_regulations_update'
        xml_response_pd_regulations(builder)
      when 'general_timestamp'
        xml_general_timestamp(builder)
      end
    end
    xml
  end
  
  def resource_request_xml(name)
    xml = ""
    builder = Builder::XmlMarkup.new(indent: 2, target: xml)
    builder.Request do
      case name
      when 'pd_clat_create'
        xml_request_pd_clat_create(builder)
      when 'pd_clause_create'
        xml_request_pd_clause_create(builder)
      when 'pd_clause_update'
        xml_request_pd_clause_update(builder)
      when 'pd_indicators_update'
        xml_request_pd_indicators_update(builder)
      when 'pd_indicator_update'
        xml_request_pd_indicator_update(builder)
      when 'pd_procurement_document_create'
        xml_request_pd_procurement_document_create(builder)
      when 'pd_procurement_document_update'
        xml_request_pd_procurement_document_update(builder)
      when 'pd_regulations_update'
        xml_request_pd_regulations_update(builder)
      end
    end
    xml
  end
  
  def xml_library_clause(builder)
    builder.Clause(id: 1, referenceAllowed: "true", provision: "false") do
      builder.Number "52.202-1"
      xml_library_regulation_minimal(builder)
      xml_library_section_minimal(builder)
      xml_library_clause_variation(builder)
      xml_library_clause_revision(builder)
    end
    builder
  end
  
  def xml_response_library_clauses(builder)
    builder.Clauses do
      xml_library_clause(builder)
    end
  end
  
  def xml_response_library_clauses_pagination(builder)
    xml_library_pagination(builder)
    builder.Clauses do
      xml_library_clause(builder)
    end
  end

  def xml_response_library_clause_revisions(builder)
    builder.Revisions do
      xml_library_clause_revision(builder)
    end
  end
  
  ##
  # Version 1
  def xml_library_clause_revision(builder)
    builder.Revision(id: 1, hasFillins: "true", isEditable: "false") do
      builder.Title "Clause Title"
      builder.Body do
        builder.cdata! "Clause Text"
      end
      builder.EffectiveStartDate "01/01/2012"
      builder.EffectiveEndDate nil
    end
    builder
  end
  
  ##
  # Version 2
  def v2_xml_library_clause_revision(builder)
    builder.Revision(id: 1, hasFillins: "true", isEditable: "false") do
      builder.Title "Clause Title"
      builder.Body do
        builder.cdata! "Clause Text"
      end
      builder.EffectiveStartDate "01/01/2012"
      builder.EffectiveEndDate nil
    end
    builder
  end

  def xml_library_clause_variation(builder)
    builder.ClauseVariation do
      builder.AlternateOrDeviation "Alternate"
      builder.VariationName "1"
    end
    builder
  end

  def xml_library_indicator(builder)
    builder.Indicator(id: 1) do
      builder.Name "Organization"
      builder.DataType "String"
      builder.Constraint "PICK_ONE"
      builder.Values do
        builder.Value("Department of Defense", id: 1)
        builder.Value("NASA", id: 2)
        builder.Value("Coast Guard", id: 3)
      end
    end
    builder
  end

  def xml_response_library_indicators(builder)
    builder.Indicators do
      xml_library_indicator(builder)
    end
  end
  
  def xml_response_library_indicators_pagination(builder)
    xml_library_pagination(builder)
    builder.Indicators do
      xml_library_indicator(builder)
    end
  end

  
  def xml_library_indicator_value(builder)
    builder.Value("Department of Defense", id: 1)
    builder
  end

  def xml_library_prescription(builder)
    builder.Prescription(id: 1) do
      builder.Number "52.202-1"
      xml_library_regulation_minimal(builder)
      xml_library_prescription_revision(builder)
    end
    builder
  end
  
  def xml_library_prescription_revision(builder)
    builder.Revision(id: 1) do
      builder.Body do
        builder.cdata! "Prescription Text"
      end
      builder.EffectiveStartDate "01/01/2012"
      builder.EffectiveEndDate nil
    end
    builder
  end

  def xml_response_library_prescriptions(builder)
    builder.Prescriptions do
      xml_library_prescription(builder)
    end
  end

  def xml_response_library_prescriptions_pagination(builder)
    xml_library_pagination(builder)
    builder.Prescriptions do
      xml_library_prescription(builder)
    end
  end
  
  def xml_response_library_prescription_revisions(builder)
    builder.Revisions do
      xml_library_prescription_revision(builder)
    end
  end

  def xml_library_regulation(builder)
    builder.Regulation(id: 1) do
      builder.Name "FAR"
      builder.Title "Federal Acquisition Regulation"
      builder.Url "https://www.acquisition.gov/far"
    end
    builder
  end

  def xml_library_section(builder)
    builder.Section(id: 1) do
      builder.Name "E"
      builder.Title "Inspection &amp; Acceptance"
    end
    builder
  end

  def xml_library_sections(builder)
    builder.Sections do
      xml_library_section(builder)
    end
    builder
  end

  def xml_library_regulation_minimal(builder)
    builder.Regulation("FAR", id: 1)
    builder
  end

  def xml_response_library_regulations(builder)
    builder.Regulations do
      xml_library_regulation(builder)
    end
  end
  
  def xml_response_library_regulations_pagination(builder)
    xml_library_pagination(builder)
    builder.Regulations do
      xml_library_regulation(builder)
    end
  end

  def xml_library_section(builder)
    builder.Section(id: 1) do
      builder.Name "I"
      builder.Title "Contract Clauses"
    end
    builder
  end
  
  def xml_library_section_minimal(builder)
    builder.Section("I", id: 1)
    builder
  end
 
  def xml_pd_clat(builder)
    builder.Clat(id: 1) do
      builder.Token "7fd5e89f7c85d7ab82b79047bc56c3dd"
      builder.Secret "27308d432f55864e8050fb0b37d186d6"
      builder.ExpiresAt "07/01/2012 08:00:03"
    end
    builder
  end

  def xml_request_pd_clat_create(builder)
  end
  
  def xml_response_pd_clats(builder)
    builder.Clats do
      xml_pd_clat(builder)
    end
    builder
  end

  def xml_pd_clause(builder)
    builder.Clause(id: 1, prescribed: true, required: false, referenceAllowed: "true", provision: "false") do
      builder.Number "52.202-1"
      xml_library_regulation_minimal(builder)
      xml_library_section_minimal(builder)
      xml_library_clause_variation(builder)
      xml_library_clause_revision(builder)
    end
    builder
  end

  def xml_request_pd_clause_create(builder)
    builder.Clause(id: 1)
  end

  def xml_response_pd_clauses(builder)
    builder.Clauses do
      xml_pd_clause(builder)
    end
    builder
  end

  def xml_pd_indicator(builder)
    builder.Indicator(id: 1) do
      builder.Name "Organization"
      builder.DataType "String"
      builder.Constraint "PICK_ONE"
      builder.Values do
        xml_pd_indicator_value(builder)
      end
    end
    builder
  end

  def xml_response_pd_indicators(builder)
    builder.Indicators do
      xml_pd_indicator(builder)
    end
  end
  
  def xml_pd_indicator_none(builder)
    builder.Indicator(id: 1) do
      builder.Name "Contract Value"
      builder.DataType "Number"
      builder.Constraint "NONE"
      xml_pd_indicator_value_none(builder)
    end
    builder
  end
  
  def xml_request_pd_indicators_update(builder)
    builder.Indicators do
      xml_request_pd_indicator(builder)
    end
    builder
  end
  
  def xml_request_pd_indicator_update(builder)
    xml_request_pd_indicator(builder)
    builder
  end
  
  def xml_request_pd_indicator(builder)
    builder.Indicator(id: 1) do
      builder.Values do
        xml_request_pd_indicator_value(builder)
      end
    end
    builder
  end
  
  def xml_request_pd_indicator_value(builder)
    builder.Value(id: 1, selected: true)
    builder
  end
  
  def xml_pd_indicator_value(builder)
    builder.Value("Department of Defense", id: 1, locked: true, selected: true)
    builder
  end
  
  def xml_pd_indicator_value_none(builder)
    builder.Value("150000.00", locked: false)
    builder
  end
  
  def xml_pd_procurement_document(builder)
    builder.ProcurementDocument do
      builder.Token           "c9de297b5ba56cbe22537138e9302a5d"
      builder.Number          "FY2012-ABC123-0001"
      builder.RunRules        false
      builder.RulesRanAt     "07/01/2012 08:00:03"
      builder.CreatedAt        "01/01/2012 08:00:03"
    end
    builder
  end

  def xml_response_pd_procurement_documents(builder)
    builder.ProcurementDocuments do
      xml_pd_procurement_document(builder)
    end
    builder
  end
  
  def xml_response_pd_procurement_document_launch_gui(builder)
    builder.LaunchUrl "https://..."
    builder
  end
  
  def xml_request_pd_procurement_document_create(builder)
    builder.Number "FY2012-ABC123-0001"
    builder
  end
  
  def xml_request_pd_procurement_document_update(builder)
    builder.Number "FY2012-ABC123-0001"
    builder
  end

  def xml_pd_regulation(builder)
    builder.Regulation("FAR", id: 1, selected: false, locked: true)
    builder
  end
  
  def xml_response_pd_regulations(builder)
    builder.Regulations do
      xml_pd_regulation(builder)
    end
    builder
  end
  
  def xml_request_pd_regulations_update(builder)
    builder.Regulations do
      builder.Regulation(id: 1, selected:false)
    end
    builder   
  end

  def xml_library_pagination(builder)
    builder.Pagination do
      builder.CurrentPage 1
      builder.TotalPages 5
      builder.TotalResults 100
    end
    builder
  end

  def xml_general_timestamp(builder)
    builder.Timestamp "1370870976"
    builder
  end

end
