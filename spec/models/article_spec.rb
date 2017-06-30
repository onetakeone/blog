require 'spec_helper'    

describe Article do

  describe "assosiations" do    #description of test
    it { should have_many(:comments) }
  end

  describe "validation" do
    it { should validate_presence_of(:title) }  
  end

  describe "#subject" do
    it"returns title" do
      article = create(:article, title: 'blabla')
      expect(article.subject).to eq 'blabla'
    end
  end

end