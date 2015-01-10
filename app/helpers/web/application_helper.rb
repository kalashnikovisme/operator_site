module Web::ApplicationHelper
  def title(page_title = t('.title'))
    content_for(:title) { "#{page_title} | #{t('application.attributes.name')}" }
  end
  def default_search_form_options(options = {})
    {method: 'get', html: {class: 'form-inline'}, defaults: {label: false, required: false, :wrapper_html => {:class => 'form-group'}, :input_html => { :class => 'form-control' }}}.merge(options)
  end

  def default_form_options(options = {})
    {html: {class: 'form-horizontal'}, wrapper: :horizontal_form}.merge options
  end

  def prepare_from(from = url_for(only_path: false))
    params[:from].presence || from
  end

  def select_options_for_model_state(model)
    model_states(model).map { |x| [x.human_name, x.name] }
  end

  def localize_enum(value, attr_name, model_name)
    I18n.t("enumerize.#{model_name}.#{attr_name}.#{value}")
  end

  def copyright_notice_year_range(start_year)
    start_year = start_year.to_i
    current_year = Time.new.year
    if current_year > start_year && start_year > 2000
      "#{start_year} - #{current_year}"
    elsif start_year > 2000
      "#{start_year}"
    else
      "#{current_year}"
    end
  end
end
