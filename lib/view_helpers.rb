include Nanoc::Helpers::Rendering

def stylesheet_tag(path)
  path = "/assets/stylesheets/#{path}.css" if path.is_a? Symbol
  %(<link rel="stylesheet" type="text/css" href="#{path}" media="screen">)
end

def items_by_kind(kind)
  items.select {|item| item[:kind] == kind }
end
