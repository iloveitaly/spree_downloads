module Spree
  class Download < ActiveRecord::Base
    # polymorphic HMBT isn't possible without a join model
    has_and_belongs_to_many :products, :join_table => 'spree_downloads_products', :class_name => "Spree::Product"
    has_and_belongs_to_many :taxons, :join_table => 'spree_downloads_taxons', :class_name => "Spree::Taxon"

    has_many :formats, :class_name => 'Spree::DownloadFormat'

    include Spree::DownloadSupport
  end
end