module PropertiesHelper
  def property_thumbnail(property)
    img = property.photo.attached? ? url_for(property.photo) : "placeholder.jpg"
    image_tag(img, class: "property-thumb")
  end

  def property_thumbnail_url(property)
    img = property.photo.attached? ? url_for(property.photo) : "placeholder1.jpg"
  end

  def property_photo_url(property)
    img = property.photo.attached? ? url_for(property.photo) : 'placeholder2.jpg'
  end

  def property_image_int_url(property)
    img = property.image_int.attached? ? url_for(property.image_int) : 'placeholder2.jpg'
  end

  def property_image_ext_url(property)
    img = property.image_ext.attached? ? url_for(property.image_ext) : 'placeholder2.jpg'
  end
end