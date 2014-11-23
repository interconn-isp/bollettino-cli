require 'spec_helper'

RSpec.describe 'The CLI binary' do
  let(:options) do
    options = ''

    options += "--payee-account='0123456789'"
    options += " --payee-name='Acme Inc.'"
    options += " --payer-name='John Doe'"
    options += " --payer-street='1600 Pennsylvania Ave'"
    options += " --payer-zip='20500'"
    options += " --payer-location='Washington D.C.'"
    options += " --order-numamount='12.35'"
    options += " --order-textamount='Dodici/35'"
    options += " --order-reason='Invoice INV-123'"

    options
  end

  let(:slip_path) { File.expand_path('../../../tmp/slip.png', __FILE__) }
  let(:bin_path) { File.expand_path('../../../bin/bollettino-cli', __FILE__) }

  before(:each) do
    FileUtils.rm(slip_path) if File.exist?(slip_path)
  end

  it 'generates the slip' do
    expect {
      `#{bin_path} generate #{options} #{slip_path}`
    }.to change{ File.exist?(slip_path) }.from(false).to(true)
  end
end
