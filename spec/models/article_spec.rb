require 'spec_helper'

describe Article do
  it { should have_many(:comments) }
  it { should validate_presence_of(:title) }  
end