class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :body, null: false
    end
  end
end
