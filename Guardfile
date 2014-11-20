interactor :off

guard "nanoc" do
  watch("nanoc.yaml")
  watch("Rules")
  watch(%r{^(content|layouts|lib)/})

  # Compass configuration is currently cached between recompiles and needs
  # a full restart of Guard.
  #watch("compass.rb")
end
