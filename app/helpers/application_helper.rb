module ApplicationHelper

  def auth_token
    html = '<input type="hidden"'
    html +=       'name="authenticity_token"'
    html +=       'value="<%= form_authenticity_token %>">'

    html.html_safe
  end

  def name_form_entry(type)
    html = "<label for=\"#{type}_name\">#{type.to_s.capitalize} "
    html += "Name</label>"
    html += "<input id=\"#{type}_name\""
    html +=      "name=\"#{type}[name]\""
    html +=      'type="text">'

    html.html_safe
  end


  def dropdown(type)
    child = (type == "band" ? "album" : "track")
    id_sym = "#{type.to_s}_id".to_sym
    


    html = "<label for=\"#{type}_id\">#{type.to_s.capitalize} Name</label>"
    html +="<select name=\"#{child}[#{type}_id]\" value=\"<%= :#{type}_id %>\">"
    type.capitalize.constantize.all.each do |item|
      html +="<option value=\"#{item.id}\""
      html += "selected" if id_sym == item.id
      html += ">"
      html += item.name
      html +="</option>"
    end
    html +="</select>"

    html.html_safe
  end

  def submit(type)
    "<input type=\"submit\" value=\"Click to submit #{type}\">".html_safe
  end
end
