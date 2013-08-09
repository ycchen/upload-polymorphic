class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :attachable, index: true, :polymorphic => true
      t.string :file

      t.timestamps
    end
  end
end
