module ApplicationHelper
  def profile_picture(user)
    thumb = user.image.attached? ? url_for(user.image) : "placeholder.jpg"
    image_tag(thumb, width: 150, class: "profile_pic img-circle")
  end

  def flash_notifications
    flash_messages = []

    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert' || type == 'danger'
      text = "toastr['#{type}']('#{message}');"
      flash_messages << text.html_safe unless message.blank?
    end

    "<script>$(function(){ #{flash_messages.join("\n")} });</script>".html_safe if flash_messages.any?
  end
end