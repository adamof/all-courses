class CreateCategoriesCourses < ActiveRecord::Migration
  def up
    create_table :categories_courses do |t|
      t.references :course, null: false
      t.references :category, null:false
    end

    add_index :categories_courses, [:course_id, :category_id]
  end

  def down
    drop_table :categories_courses
  end
end
