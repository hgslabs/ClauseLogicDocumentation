class V2::ResourceObjectsController < ApplicationController

  def index

  end

  def clause
    @resource = V2::ResourceObject::Clause
    render_resource_object
  end

  def clause_revision
    @resource = V2::ResourceObject::ClauseRevision
    render_resource_object
  end

  def indicator
    @resource = V2::ResourceObject::Indicator
    render_resource_object
  end

  def indicator_value
    @resource = V2::ResourceObject::IndicatorValue
    render_resource_object
  end

  def prescription
    @resource = V2::ResourceObject::Prescription
    render_resource_object
  end

  def prescription_revision
    @resource = V2::ResourceObject::PrescriptionRevision
    render_resource_object
  end

  def regulation
    @resource = V2::ResourceObject::Regulation
    render_resource_object
  end

  def section
    @resource = V2::ResourceObject::Section
    render_resource_object
  end

  ##############################
  # Document Resource Objects
  ##############################

  def document
    @resource = V2::ResourceObject::Document
    render_resource_object
  end

  def document_regulation
    @resource = V2::ResourceObject::DocumentRegulation
    render_resource_object
  end

  def document_question
    @resource = V2::ResourceObject::DocumentQuestion
    render_resource_object
  end

  private

  def render_resource_object
    render 'resource_object'
  end
end
