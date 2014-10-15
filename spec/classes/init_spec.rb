require 'spec_helper'
describe 'pptp' do

  context 'with defaults for all parameters' do
    it { should contain_class('pptp') }
  end
end
