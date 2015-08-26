class CreateUsersView < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW users_view AS
        SELECT 
        u.id,
        u.account_id,
        u.created_at,
        u.updated_at
        FROM users u
    SQL
  end

  def down
    execute 'DROP VIEW users_view'
  end
end
