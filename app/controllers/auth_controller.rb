class AuthController < DocumentationController

  def signature
    @request_body = ""
    builder = Builder::XmlMarkup.new(target: @request_body)
    builder.instruct!
    builder.request do
      builder.id 1743
      builder.name 'John'
    end
    
  end

end
