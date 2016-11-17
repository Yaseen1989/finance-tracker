class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|

      t.timestamps null: false
      
      t.belongs_to :user 
      t.belongs_to :friend, class: 'User' 
    end
  end
end
