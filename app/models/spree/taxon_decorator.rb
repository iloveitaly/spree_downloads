Spree::Taxon.class_eval do
  has_and_belongs_to_many :downloads

  include Spree::DownloadSupport
  
  def all_downloads
    (products.map(&:downloads).flatten + downloads).uniq
  end
end
