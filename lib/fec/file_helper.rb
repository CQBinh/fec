module Fec
  module FileHelper
    def directory?(parrent, path)
      File.directory?(File.join(parrent, path) && !(path == '.' || path == '..'))
    end
  end
end
