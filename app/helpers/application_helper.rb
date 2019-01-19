module ApplicationHelper
  def required_field
    raw('<span class="form__asterisk">*</span>')
  end
end
