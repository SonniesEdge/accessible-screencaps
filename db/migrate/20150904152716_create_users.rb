class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :twitterid
      t.string :name
      t.string :oauth_token
      t.string :oauth_secret

      t.timestamps null: false
    end
  end
end
