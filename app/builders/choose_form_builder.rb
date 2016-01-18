class ChooseFormBuilder < ActionView::Helpers::FormBuilder
  delegate :content_tag, to: :@template

  def composite(k, html_options={})
    html_options.merge!(id: k)
    html_options.merge!(class: "composite #{html_options[:class]}" )
    content_tag(:div, yield(k), html_options)
  end

  def errors_for(method)
    unless @object.errors[method].nil?
      content_tag(:div, @object.errors[method].join("; "), class: 'field_error')
    end
  end

end