class ResourceObjectsController < DocumentationController
  
  def index
  end

  def library_clause
    @xml = resource_object_xml('library_clause')
  end

  def library_clause_revision
    @xml = resource_object_xml('library_clause_revision')
  end
  
  def library_clause_variation
    @xml = resource_object_xml('library_clause_variation')
  end
  
  def library_indicator
    @xml = resource_object_xml('library_indicator')
  end
  
  def library_indicator_value
    @xml = resource_object_xml('library_indicator_value')
  end

  def library_prescription
    @xml = resource_object_xml('library_prescription')
  end
  
  def library_prescription_revision
    @xml = resource_object_xml('library_prescription_revision')
  end

  def library_regulation
    @xml = resource_object_xml('library_regulation')
  end

  def library_section
    @xml = resource_object_xml('library_section')
  end
  
  def pd_clat
    @xml = resource_object_xml('pd_clat')
  end
  
  def pd_clause
    @xml = resource_object_xml('pd_clause')
  end
  
  def pd_indicator
    @xml = resource_object_xml('pd_indicator')
    @xml2 = resource_object_xml('pd_indicator_none')
  end
  
  def pd_indicator_value
    @xml = resource_object_xml('pd_indicator_value')
    @xml2 = resource_object_xml('pd_indicator_value_none')
  end

  def pd_procurement_document
    @xml = resource_object_xml('pd_procurement_document')
  end

  def pd_regulation
    @xml = resource_object_xml('pd_regulation')
  end

end