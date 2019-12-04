class AddDownvoteToUpvotes < ActiveRecord::Migration[5.2]
  def change
    add_column :upvotes, :downvote, :boolean, null: false, default: false
  end
end
