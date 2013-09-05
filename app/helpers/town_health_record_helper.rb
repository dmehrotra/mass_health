module TownHealthRecordHelper

  def table_headers
    titles.map { | title | "<th>#{title}</th>" }.join.html_safe
  end


  def titles
    [
      "Geography",
      "total pop, year 2005",
      "age 0-19, year 2005",
      "age 65+, year 2005",
      "Per Capita Income, year 2000",
      "Persons Living Below 200% Poverty, year 2000",
      "% all Persons Living Below 200% Poverty Level, year 2000",
      "% adequacy prenatal care (kotelchuck)",
      "% C-section deliveries, 2005-2008",
      "Number of infant deaths, 2005-2008",
      "Infant mortality rate (deaths per 1000 live births), 2005-2008",
      "% low birthweight 2005-2008",
      "% multiple births, 2005-2008",
      "% publicly financed prenatal care, 2005-2008",
      "% teen births, 2005-2008"
    ]
  end
end
