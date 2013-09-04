module TownHealthRecordHelper

  def get_choice( choice )
    if choice == 'Geography'
      return 'town'
    end

    'total_population'
  end

end
