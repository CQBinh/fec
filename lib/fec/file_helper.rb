require 'pry'
module Fec
  module FileHelper
    def directory?(parrent, path)
      binding.pry
      File.directory?(File.join(parrent, path)) && !(path == '.' || path == '..')
    end
  end
end
