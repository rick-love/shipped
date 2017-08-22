class CreatePlaneJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :plane_jobs do |t|

      t.timestamps
    end
  end
end
