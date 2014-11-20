# https://github.com/Compass/compass/wiki/nanoc-integration suggests
# guarding against multiple reloads.
unless defined? Compass
  require "compass"
  Compass.add_project_configuration "compass.rb"
end

def filterify(item)
  return false if item.binary?

  case item[:extension]
  when "haml";  filter :haml, :format => :html5
  when "md";    filter :erb; filter :kramdown
  when "scss";  filter :sass, Compass.sass_engine_options
  when "js";    nil
  else          filter :erb
  end

  true
end

def routify(item, identifier = item.identifier)
  # Return identifiers already containing an extension as is.
  return identifier.chop if identifier =~ /\./

  case ext = item[:extension].to_s
  when "haml", "md", "html"; identifier + "index.html"
  when "scss"; identifier.chop + ".css"
  when "htaccess", "htpasswd"; identifier.sub(%r([^/]+/$), ".") + ext
  else identifier.chop.sub(/[.-]#{ext}$/, "") + "." + ext
  end
end
