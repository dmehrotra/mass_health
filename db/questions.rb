
# What 3 towns have the highest population of citizence who are 65 years or older?
TownHealthRecord.select( :town, :elder_population ).order( 'elder_population DESC' ).limit(3)

# What 3 towns have the highest population of citizens who are 19 years or younger?
TownHealthRecord.select( :town, :youth_population ).order( 'youth_population DESC' ).limit(3)

# What 5 towns have the lowest per capita income?
TownHealthRecord.select( :town, :income ).order( :income ).limit(5)

# What town has the highest percentage of teen births, excluding Boston, Becket, and Beverly?
TownHealthRecord.select( :town, :teen_preg ).where('town != ? AND town != ? AND town != ?', 'Boston', 'Becket', 'Beverly').order(:teen_preg).limit(1)

# What town has the highest number of infant mortalities, excluding Boston?
TownHealthRecord.select( :town, :infant_mortality ).where( 'town != ?', 'Boston').order( :infant_mortality ).limit(1)

