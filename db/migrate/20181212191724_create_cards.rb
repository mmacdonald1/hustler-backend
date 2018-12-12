class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.belongs_to :deck, index: true
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
