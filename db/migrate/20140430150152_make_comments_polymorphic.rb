class MakeCommentsPolymorphic < ActiveRecord::Migration
  def change
    remove_column :comments, :video_id, :integer
    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
    add_reference :comments, :user, index: true
  end
end
