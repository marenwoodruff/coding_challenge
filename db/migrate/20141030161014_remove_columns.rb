class RemoveColumns < ActiveRecord::Migration

  def self.up
    remove_column :reviews, :comment
  end

  def self.down
    add_column :reviews, :comment, :string
  end
end

