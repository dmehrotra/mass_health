class TownHealthRecordController < ApplicationController

  include TownHealthRecordHelper

  def index

    choice = get_choice( params[:column_select] )

    if params[:column] &&
       params[:column].length > 0

      @records = TownHealthRecord.where( choice.to_sym params[:column] )
    else
      @records = TownHealthRecord.limit(params[:limit].to_i + 2)
    end
  end


end
