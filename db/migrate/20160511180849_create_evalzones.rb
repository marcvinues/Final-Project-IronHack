class CreateEvalzones < ActiveRecord::Migration
  def change
    create_table :evalzones do |t|
      t.string :definestreet
      t.string :satisfaction
      t.string :noise
      t.string :vecinos
      t.string :coments
      t.string :defzone
      t.string :danger
      t.string :quiet
      t.string :clean
      t.string :noisezone
      t.string :publictransport
      t.string :placerent
      t.string :placesell
      t.string :supermarkets

      t.timestamps null: false
    end
  end
end
