module TownHealthRecordHelper

  def table_headers
    titles.map { | pair | "<th>#{pair[1]}</th>" }.join.html_safe
  end

  def column_options
    titles.map { | pair | "<option value='#{pair[0]}'>#{pair[1]}</option>" }.join.html_safe
  end

  def titles
    [
      ['town',"Geography"],
      ['total_population',"total pop, year 2005"],
      ['youth_population',"age 0-19, year 2005"],
      ['elder_population',"age 65+, year 2005"],
      ['income',"Per Capita Income, year 2000"],
      ['poverty',"Persons Living Below 200% Poverty, year 2000"],
      ['poverty_percentage',"% all Persons Living Below 200% Poverty Level, year 2000"],
      ['prenatal_care',"% adequacy prenatal care (kotelchuck)"],
      ['c_section',"% C-section deliveries, 2005-2008"],
      ['infant_deaths',"Number of infant deaths, 2005-2008"],
      ['infant_mortality',"Infant mortality rate (deaths per 1000 live births), 2005-2008"],
      ['low_birthweight',"% low birthweight 2005-2008"],
      ['multiple_births',"% multiple births, 2005-2008"],
      ['publicly_financed_prenatal',"% publicly financed prenatal care, 2005-2008"],
      ['teen_preg',"% teen births, 2005-2008"]
    ]
  end
end
