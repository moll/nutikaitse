include Nanoc::Helpers::Rendering

def find_item(name)
  if item = @items["#{name.chop}.#{@config[:lang]}/"] || @items[name]
    item
  else
    raise "Item not found: #{name}"
  end
end

def items_by_kind(kind)
  items.select {|item| item[:kind] == kind }
end

def render_item(name)
  item = find_item(name)
  item.compiled_content(:snapshot => :last)
end

def stylesheet_tag(path, opts = {})
  path = "/assets/stylesheets/#{path}.css" if path.is_a? Symbol
  args = opts_to_args(opts)
  %(<link rel="stylesheet" type="text/css" href="#{path}"#{args}>)
end

def javascript_tag(path, opts = {})
  path = "/assets/javascripts/#{path}.js" if path.is_a?(Symbol)
  args = opts_to_args(opts)
  %(<script src="#{path}"#{args}></script>)
end

def image_path(img)
  Compass.configuration.http_images_path + "/" + img
end

def opts_to_args(opts)
  args = opts.reduce([]) do |args, pair|
    arg, val = pair

    case val
    when TrueClass
      args << arg.to_s
    else
      args << "#{arg}=\"#{val}\""
    end
  end

  args.empty?? "" : " " + args.join(" ")
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
