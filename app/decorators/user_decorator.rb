class UserDecorator < Draper::Decorator
  delegate_all

  def city
    
  end

  def avatar
    h.link_to_if_model.avatar.present? h.cl_image_tag(model.avatar.path, width: 100, height: 120)
    if model.avatar.present?
      image ||= cl_image_tag(user.avatar.path, width: 100, height: 120)
    else
      image ||= image_tag user.gravatar_url
    end
    image
 
  end
  
  

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

end
