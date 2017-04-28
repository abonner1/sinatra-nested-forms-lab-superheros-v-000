class ChangeHeroMottoToPower < ActiveRecord::Migration[5.1]
  def change
    rename_column :heros, :motto, :power
  end
end
