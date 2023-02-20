class AddReferenceChapterSeries < ActiveRecord::Migration[7.0]
  def change
    add_reference :chapters, :series, foreign_key: true, null: true
  end
end
