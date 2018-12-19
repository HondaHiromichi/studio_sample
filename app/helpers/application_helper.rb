module ApplicationHelper
  APP_NAME = 'Studio Compare'.freeze
  def page_title
    base_title = APP_NAME
    return base_title if @title.blank?
    "#{base_title} | #{@title}"
  end

  def flash_message(message, klass)
    content_tag(:div, class: "alert alert-#{klass}") do
      concat content_tag(:button, 'x', class: 'close', date: { dismiss: 'alart' })
      concat raw(message)
    end
  end
end
