class EnableUuids < ActiveRecord::Migration[5.0]
  def change
    self.execute <<-EOF
      CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
    EOF
  end
end
