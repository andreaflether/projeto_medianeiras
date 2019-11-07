class RemoveFkFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :pessoa, foreign_key: true
  end
end
