class V2::ResourceObjectsController < ApplicationController
  
  def index
    
  end
  
  def clause
    @resource = V2::Clause
    render_resource_object
  end
  
  def clause_revision
    @resource = V2::ClauseRevision
    render_resource_object
  end
  
  def indicator
    @resource = V2::Indicator
    render_resource_object
  end
  
  def indicator_value
    @resource = V2::IndicatorValue
    render_resource_object
  end
  
  def prescription
    @resource = V2::Prescription
    render_resource_object
  end
  
  def prescription_revision
    @resource = V2::PrescriptionRevision
    render_resource_object
  end
  
  def regulation
    @resource = V2::Regulation
    render_resource_object
  end
  
  def section
    @resource = V2::Section
    render_resource_object
  end
  
  private
  
  def render_resource_object
    render 'resource_object'
  end
end