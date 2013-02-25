module Spree
  class DownloadFormat < ActiveRecord::Base
    belongs_to :download

    has_attached_file :attachment
  end
end