module DeviseHelper
  def devise_error_messages!
    return "" unless devise_error_messages?

    messages = resource.errors.full_messages.map { |message| content_tag(:li, message) }.join 


    html = <<-HTML
    <div id="error_explanation">
      <div id="error_explanation">
        <p class="danger-color">#{resource.errors.count} Erro(s):</p>
        <ul class="error_messages">#{messages}</ul>
      </div>
    </div>
    HTML

    
    html.html_safe
  end

  def devise_error_messages?
    !resource.errors.empty?
  end

end

    
