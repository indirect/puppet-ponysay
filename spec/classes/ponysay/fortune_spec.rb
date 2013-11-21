require 'spec_helper'

describe 'ponysay::fortune' do
  let(:facts) { { :boxen_home => '/opt/boxen' } }

  it { should contain_package('fortune') }
end
