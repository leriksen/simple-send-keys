require 'spec_helper'
require 'simple_send_keys'

describe 'SimpleSendKeys' do
  before(:each) do
    self.extend SimpleSendKeys
  end

  let(:native) {double('native')}

  it 'can send keys in a list format' do
    expect(native).to receive(:send_keys).once.with([:backspace, 'gist', :f1, '123'])
    send_keys('[backspace, "gist", f1 , 123]')
  end

  it 'can send keys in a string format' do
    expect(native).to receive(:send_keys).once.with(['gist'])
    send_keys('gist')
  end
end