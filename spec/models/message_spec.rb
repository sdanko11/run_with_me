require 'spec_helper'

describe Message do
  it { should belong_to(:reciever) }
  it { should belong_to(:sender) }
end
