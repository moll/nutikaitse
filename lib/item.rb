module Nanoc
  class Item
    def name
      self.identifier == "/" ? "index" : File.basename(self.identifier.chop)
    end

    def filename
      File.join(Dir.pwd, self[:filename])
    end
  end
end
