class CreateMytestapps < ActiveRecord::Migration
  def change
    create_table :mytestapps do |t|

      t.timestamps null: false
    end
  end
end
