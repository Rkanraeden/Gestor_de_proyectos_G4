class CreateProjectMs < ActiveRecord::Migration[7.0]
  def change
    create_table :project_ms do |t|

      t.timestamps
    end
  end
end
