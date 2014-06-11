module ApplicationHelper

  def admins_only(&block)
    block.call if current_user.try(:admin?)
  end

  def show_avatar_for(user)
    if user.avatar.present?
      image ||= cl_image_tag(user.avatar.path, width: 100, height: 120)
    else
      image ||= image_tag user.gravatar_url
    end
    image
  end

  def toastr_flash
    flash_messages = []
    flash.each do |type, message|
      if message
        type = check_flash_type type
        text = javascript_tag("toastr.#{type}('#{message}');")
        flash_messages << text.html_safe
      end
    end
    flash_messages.join("\n").html_safe
  end

  def check_flash_type type
    return :success if type == :notice
    return :error if type == :alert
    return :error if type == :error
  end

end
