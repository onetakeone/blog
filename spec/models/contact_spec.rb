require "spec_helper"

#require 'rspec/rails'

describe Contact do 
  it { should validate_presence_of(:email) }   
end