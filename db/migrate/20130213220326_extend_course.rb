class ExtendCourse < ActiveRecord::Migration
  def up
    add_column :courses, :category_id, :integer
    add_column :courses, :provider_id, :integer
    add_column :courses, :url, :string
    add_column :courses, :description, :text
    add_column :courses, :university, :string
    add_column :courses, :level, :string
  end

  def down
    remove_column :courses, :category_id
    remove_column :courses, :provider_id
    remove_column :courses, :url
    remove_column :courses, :description
    remove_column :courses, :university
    remove_column :courses, :level
  end
end
