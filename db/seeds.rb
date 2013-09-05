# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

def clean_int str
  str.tr('$, ','') if !str.nil?
end

CSV.foreach('db/mass_chip_data.csv', headers: true) do |row|

    record = TownHealthRecord.where(town: row['Geography']).first

    if !record.nil?
        record.update_attributes({
        town: row['Geography'],
        total_population: clean_int(row['total pop, year 2005']),
        youth_population: clean_int(row['age 0-19, year 2005']),
        elder_population: clean_int(row['age 65+, year 2005']),
        income: clean_int(row['Per Capita Income, year 2000']),
        poverty: clean_int(row['Persons Living Below 200% Poverty, year 2000 ']),
        poverty_percentage: row['% all Persons Living Below 200% Poverty Level, year 2000'],
        prenatal_care: row['% adequacy prenatal care (kotelchuck)'],
        c_section: row['% C-section deliveries, 2005-2008'],
        infant_deaths: clean_int(row['Number of infant deaths, 2005-2008']),
        infant_mortality: row['Infant mortality rate (deaths per 1000 live births), 2005-2008'],
        low_birthweight: row['% low birthweight 2005-2008'],
        multiple_births: row['% multiple births, 2005-2008'],
        publicly_financed_prenatal: row['% publicly financed prenatal care, 2005-2008'],
        teen_preg: row['% teen births, 2005-2008']

      })
    else
      TownHealthRecord.new({
        town: row['Geography'],
        total_population: clean_int(row['total pop, year 2005']),
        youth_population: clean_int(row['age 0-19, year 2005']),
        elder_population: clean_int(row['age 65+, year 2005']),
        income: clean_int(row['Per Capita Income, year 2000']),
        poverty: clean_int(row['Persons Living Below 200% Poverty, year 2000 ']),
        poverty_percentage: row['% all Persons Living Below 200% Poverty Level, year 2000'],
        prenatal_care: row['% adequacy prenatal care (kotelchuck)'],
        c_section: row['% C-section deliveries, 2005-2008'],
        infant_deaths: clean_int(row['Number of infant deaths, 2005-2008']),
        infant_mortality: row['Infant mortality rate (deaths per 1000 live births), 2005-2008'],
        low_birthweight: row['% low birthweight 2005-2008'],
        multiple_births: row['% multiple births, 2005-2008'],
        publicly_financed_prenatal: row['% publicly financed prenatal care, 2005-2008'],
        teen_preg: row['% teen births, 2005-2008']

      }).save
    end

end


