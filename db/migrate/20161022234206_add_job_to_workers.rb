class AddJobToWorkers < ActiveRecord::Migration[5.0]
  def change
    add_column :workers, :job, :string
  end
end
