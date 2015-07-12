require 'spec_helper'
require 'simple_send_keys'

describe 'SimpleSendKeys' do
  let(:native) {double('native')}
  it 'can send keys' do
    self.extend SimpleSendKeys
    expect(native).to receive(:send_keys).once.with([:backspace, 'gist', :f1, '123'])
    send_keys('[backspace, "gist", f1 , 123]')
  end
end