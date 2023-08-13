class CreateNewsComments < ActiveRecord::Migration[7.0]
  def change
    create_table :news_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :news, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
