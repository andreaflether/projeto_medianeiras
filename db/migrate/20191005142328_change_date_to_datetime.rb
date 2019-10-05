class ChangeDateToDatetime < ActiveRecord::Migration[5.2]
  def up
    change_column :eventos, :data, :datetime
  end

  def down
    change_column :eventos, :data, :date
  end
end
