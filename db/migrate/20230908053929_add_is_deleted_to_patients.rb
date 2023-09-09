class AddIsDeletedToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :is_deleted, :boolean
  end
end
