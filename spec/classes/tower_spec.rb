require 'spec_helper'

describe 'tower' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end

  it do
    should contain_package('Tower').with({
      :source   => 'https://macapps.fournova.com/tower1-1060/download',
      :provider => 'compressed_app'
    })
  end
end
