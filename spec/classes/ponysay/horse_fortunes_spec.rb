require 'spec_helper'

describe 'ponysay::horse_fortunes' do
  let(:facts) { { :boxen_home => '/opt/boxen' } }
  let(:fortunes) { "/opt/boxen/homebrew/share/games/fortunes" }

  it { should contain_package('fortune') }

  it do
    should contain_exec('horse_ebooks').with(
      'cwd'     => fortunes,
      'command' => "curl -o horse_ebooks http://horsefortun.es/fortune",
      'unless'  => "test -e #{fortunes}/horse_ebooks"
    )
  end

  it { should contain_exec('horse_ebooks.dat') }
end
