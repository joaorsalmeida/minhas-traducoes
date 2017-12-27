class AddAuthorToTranslations < ActiveRecord::Migration[5.1]
  def change
    add_column :translations, :author, :string
  end
end
