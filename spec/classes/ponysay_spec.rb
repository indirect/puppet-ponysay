require 'spec_helper'

describe 'ponysay' do
  let(:facts) { { :boxen_home => '/opt/boxen' } }

  it { should contain_package('boxen/brews/ponysay') }
  it { should contain_homebrew__formula('ponysay') }
end
