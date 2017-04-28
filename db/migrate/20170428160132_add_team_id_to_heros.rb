class AddTeamIdToHeros < ActiveRecord::Migration[5.1]
  def change
    add_column :heros, :team_id, :integer
  end
end
