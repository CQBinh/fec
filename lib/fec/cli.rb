
require 'thor'
require 'rainbow'
require_relative 'file_helper'
require_relative 'messenger'

module Fec
  class FileExtensionChanger < Thor
    include Fec::FileHelper
    include Fec::Messenger
    desc 'version', 'Show the Fec version'
    map %w(-v --version) => :version

    def version
      puts "Fec version #{::Fec::VERSION} on Ruby #{RUBY_VERSION}"
    end

    desc 'rename', 'rename files extension in folder'
    method_option :old_extension, aliases: '-o', required: true
    method_option :new_extension, aliases: '-n', required: true
    def rename(folder_path)
      old_extension = options.fetch('old_extension')
      new_extension = options.fetch('new_extension')

      Dir.entries("#{folder_path}/").each do |name|
        if directory?(folder_path, name)
          path = "#{folder_path}/#{name}"
          notice_message("Processing #{path}")
          rename(path)
        elsif name.downcase.include? old_extension
          old_file_name = "#{folder_path}/#{name}"
          new_file_name = "#{folder_path}/#{File.basename(name, '.*')}.#{new_extension}"
          notice_message("Changing #{name}")
          FileUtils.mv old_file_name, new_file_name
        end
      end
    end
  end
end
