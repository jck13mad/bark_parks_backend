class CreateDogFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_files do |t|
      t.string :name
      t.integer :user_id
      t.string :sex
      t.integer :weight
      t.integer :age
      t.string :breed

      t.timestamps
    end
  end
end
