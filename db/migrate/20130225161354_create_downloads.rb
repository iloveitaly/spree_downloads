class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :spree_downloads do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    add_index :spree_downloads, :id

    create_table :spree_download_formats do |t|
      t.string :attachment_file_name
      t.datetime :attachment_updated_at
      t.boolean :primary
      t.references :download

      t.timestamps
    end

    add_index :spree_download_formats, :id

    create_table :spree_downloads_taxons, :id => false do |t|
      t.references :download, :taxon
    end

    create_table :spree_downloads_products, :id => false do |t|
      t.references :download, :product
    end

    add_index :spree_downloads_taxons, [:download_id, :taxon_id]
    add_index :spree_downloads_products, [:download_id, :product_id]
  end
end
