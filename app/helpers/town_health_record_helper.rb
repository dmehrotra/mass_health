module TownHealthRecordHelper

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

  def table_headers
    titles.map { | pair | "<th>#{pair[1]}</th>" }.join.html_safe
  end

  def column_options
    arr = titles.map do | pair |
      if pair[0] == @column
        "<option value='#{pair[0]}' selected='selected' >#{pair[1]}</option>"
      else
        "<option value='#{pair[0]}' >#{pair[1]}</option>"
      end
    end
    arr.join.html_safe
  end

  def order_by
    if @sort_order && @sort_order == 'DESC'
      "<option value = 'ASC'>Ascending</option><option value = 'DESC' selected='selected'> Descending </option>".html_safe
    else
      "<option value = 'ASC' selected='selected'>Ascending</option><option value = 'DESC'> Descending </option>".html_safe
    end
  end


  def create_rails_command
    "TownHealthRecord.order(\"#{@column} #{@sort_order}\").limit(#{@limit})"
  end

  def create_sql_command
    "SELECT \"town_health_records\".* FROM \"town_health_records\" ORDER BY #{@column} #{@sort_order} LIMIT #{@limit}"
  end

end
