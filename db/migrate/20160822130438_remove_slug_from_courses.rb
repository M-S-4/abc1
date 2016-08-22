class RemoveSlugFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :slug, :string
  end
end
