class CreatePropositions < ActiveRecord::Migration
  def change
    create_table :propositions do |t|
      t.text :text
      t.datetime :begin_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
