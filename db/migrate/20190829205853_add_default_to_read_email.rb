class AddDefaultToReadEmail < ActiveRecord::Migration[5.2]
  def up
    change_column_default :emails, :read, false
  end
  def down
    change_column_default :emails, :read
  end
end
