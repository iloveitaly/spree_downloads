require 'spec_helper'

describe Spree::Download do
  before { @download = create :download }
  let(:download) { @download }

  it "should have working model associations" do
    download.formats
    download.taxons.size.should == 1
    download.products.size.should == 1
  end
end