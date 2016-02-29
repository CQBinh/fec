require 'pry'
module Fec
  module FileHelper
    def directory?(path)
      parrent = File.expand_path('..', path)
      path = File.basename(path)
      File.directory?(File.join(parrent, path)) && !(path == '.' || path == '..')
    end
  end
end
