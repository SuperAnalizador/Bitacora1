class CreateMesssages < ActiveRecord::Migration[6.1]
  def change
    create_table :messsages do |t|
      t.string :author
      t.text :message
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
