include Nanoc::Helpers::Rendering

def stylesheet_tag(path)
  path = "/assets/stylesheets/#{path}.css" if path.is_a? Symbol
  %(<link rel="stylesheet" type="text/css" href="#{path}" media="screen">)
end

def items_by_kind(kind)
  items.select {|item| item[:kind] == kind }
end

def edit_link_to(item)
  case ENV["GEDITOR"]
  when "mvim"
    url = "mvim://open?url=file://#{item.filename}"
  else
    url = "file://#{item.filename}"
  end

  %(<a href="#{url}" class="edit">✎</a>)
end

def image_path(img)
  Compass.configuration.http_images_path + "/" + img
end
