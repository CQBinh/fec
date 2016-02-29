require 'spec_helper'
require 'file_helper'

describe Fec do
  include FileHelper

  let(:fec) { Fec::FileExtensionChanger.new }

  it 'has a version number' do
    expect(Fec::VERSION).not_to be nil
  end

  it 'Rename success' do
    old_file_extension = 'txt'
    new_file_extension = 'new'
    root = create_file(old_file_extension)
    fec.options = {
      'old_extension' => old_file_extension,
      'new_extension' => new_file_extension
    }
    fec.rename root
    files = files_in_folder(root)
    true_expectation = all_files_contain_same_extension?(files, new_file_extension)
    expect(true_expectation).to be true
    false_expectation = all_files_contain_same_extension?(files, old_file_extension)
    expect(false_expectation).to be false
  end
end
