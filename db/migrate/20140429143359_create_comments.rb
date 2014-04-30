class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :video
      t.text :content
      t.timestamps
    end
  end
end
