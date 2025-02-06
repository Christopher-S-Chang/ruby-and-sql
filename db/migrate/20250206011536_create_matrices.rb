class CreateMatrices < ActiveRecord::Migration[7.1]
  def change
    create_table :matrices do |t|

      t.timestamps
    end
  end
end
