class CreateTranslations < ActiveRecord::Migration[5.1]
  def change
    create_table :translations do |t|
      t.string :portuguese
      t.string :english

      t.timestamps
    end
  end
end
