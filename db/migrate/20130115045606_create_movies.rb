class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, :null => false
      t.text :summary, :null => false
      t.integer :release_year, :null => false
      t.text :poster_url, :null => false
      t.timestamps
    end
  end
end
