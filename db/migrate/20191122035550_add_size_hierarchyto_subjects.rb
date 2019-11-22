class AddSizeHierarchytoSubjects < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects, :size_hierarchy, :integer
  end
end
