class User < ActiveRecord::Base
  belongs_to :account

  self.table_name = "users_view"
  self.primary_key = "id"
end
