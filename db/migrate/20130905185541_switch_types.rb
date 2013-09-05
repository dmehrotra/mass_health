class SwitchTypes < ActiveRecord::Migration
  def up
    remove_column :town_health_records, :total_population
    remove_column :town_health_records, :youth_population
    remove_column :town_health_records, :elder_population
    remove_column :town_health_records, :income
    remove_column :town_health_records, :poverty
    remove_column :town_health_records, :infant_deaths

    add_column :town_health_records, :total_population, :integer
    add_column :town_health_records, :youth_population, :integer
    add_column :town_health_records, :elder_population, :integer
    add_column :town_health_records, :income, :integer
    add_column :town_health_records, :poverty, :integer
    add_column :town_health_records, :infant_deaths, :integer

  end
  def down

    remove_column :town_health_records, :total_population
    remove_column :town_health_records, :youth_population
    remove_column :town_health_records, :elder_population
    remove_column :town_health_records, :income
    remove_column :town_health_records, :poverty
    remove_column :town_health_records, :infant_deaths

    add_column :town_health_records, :total_population, :float
    add_column :town_health_records, :youth_population, :float
    add_column :town_health_records, :elder_population, :float
    add_column :town_health_records, :income, :float
    add_column :town_health_records, :poverty, :float
    add_column :town_health_records, :infant_deaths, :float
  end
end
