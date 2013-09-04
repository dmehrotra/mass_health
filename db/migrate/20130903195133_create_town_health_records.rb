class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town
      t.float :total_population
      t.float :youth_population
      t.float :elder_population
      t.float :income
      t.float :poverty
      t.float :poverty_percentage
      t.float :total_poverty_percentage
      t.float :prenatal_care
      t.float :c_section
      t.float :infant_deaths
      t.float :infant_mortality
      t.float :low_birthweight
      t.float :multiple_births
      t.float :publicly_financed_prenatal
      t.float :teen_preg
      t.timestamps
    end
  end
end
 
