class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.string :image, null: false, default: ""
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
