class ChooseFormBuilder < ActionView::Helpers::FormBuilder
  delegate :content_tag, to: :@template

  def composite(k)
    content_tag(:div, yield(k), class: 'composite')
  end

  def errors_for(method)
    unless @object.errors[method].nil?
      content_tag(:div, @object.errors[method].join("; "), class: 'field_error')
    end
  end

end