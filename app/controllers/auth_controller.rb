class AuthController < DocumentationController
  
  def request_types    
  end
  
  def signature
    @request_body = xml_request_body
  end
  
  def clat    
  end
  
  private
  
  def xml_request_body
    request_body = ""
    builder = Builder::XmlMarkup.new(target: request_body)
    builder.instruct!
    builder.request do
      builder.id 1743
      builder.name 'John'
    end
    request_body
  end
  
end
