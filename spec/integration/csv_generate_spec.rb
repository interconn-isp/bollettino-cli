require 'spec_helper'

RSpec.describe 'The csv-generate command' do
  let(:options) do
    options = ''
    options += "--source='#{source_path}'"
    options
  end

  let(:source_path) { File.expand_path('../../fixtures/slips.csv', __FILE__) }
  let(:slips_path) { File.expand_path('../../../tmp', __FILE__) }
  let(:slip_path) { "#{slips_path}/1.png" }
  let(:bin_path) { File.expand_path('../../../bin/bollettino-cli', __FILE__) }

  before(:each) do
    FileUtils.rm(slip_path) if File.exist?(slip_path)
  end

  it 'generates the slip' do
    expect {
      `#{bin_path} csv-generate #{options} #{slips_path}`
    }.to change{ File.exist?(slip_path) }.from(false).to(true)
  end
end
