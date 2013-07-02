module ApplicationHelper
  
  def resource_name(resource)
    resource.name.split('::').last
  end
  
  def field_included(compact)
    marker = "&nbsp;"
    case compact
    when :always
      marker = "&#x2714;"
    when :some
      marker = "&#x25CB;"
    end
    raw(marker)
  end
  
  def resource_object_example(resource)
    json_string = "{\n"
    resource.fields.each do |name, options|
      json_string.concat("  \"#{name}\":\"#{options[:example]}\"\n")
    end
    json_string.concat("}")
  end
  
end
