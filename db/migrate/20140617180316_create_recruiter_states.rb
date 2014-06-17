class CreateRecruiterStates < ActiveRecord::Migration
  def change
    create_table :recruiter_states do |t|
      t.string :name
      t.string :short

      t.timestamps
    end

    add_index :recruiter_states, :name, unique: true
  end
end
