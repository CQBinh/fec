require 'fec/file_helper'

module FileHelper
  include Fec::FileHelper
  def all_files_contain_same_extension?(files, extension)
    files.each do |item|
      return false unless File.extname(item).include? extension
    end
    true
  end

  def create_file(file_extension)
    root = "#{Dir.tmpdir}/foo"
    bar_path = "#{root}/bar"
    lorem_path = "#{root}/lorem"
    mkdir_and_create_file(root, file_extension)
    mkdir_and_create_file(bar_path, file_extension)
    mkdir_and_create_file(lorem_path, file_extension)
    root
  end

  def files_in_folder(path)
    files = []
    Dir.entries(path).each do |name|
      current_path = "#{path}/#{name}"
      if directory?(current_path)
        files_in_folder(current_path).each do |item|
          files.push(item)
        end
      elsif name.length > 2
        files.push(name)
      end
    end
    files
  end

  private

  def mkdir_and_create_file(folder_path, file_extension)
    FileUtils.mkdir_p folder_path
    file_name = "#{Time.now.to_f}.#{file_extension}"
    File.open("#{folder_path}/#{file_name}", 'w') { |f| f.write('') }
  end
end
