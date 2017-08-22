class CreatePlaneJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :plane_jobs do |t|
      t.integer :plane_id
      t.integer :job_id
      t.timestamps
    end
  end
end
