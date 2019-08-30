class AddCompanyToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :company, :string
  end
end
