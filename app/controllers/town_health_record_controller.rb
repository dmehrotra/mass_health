class TownHealthRecordController < ApplicationController
  def index
    if params[:town_health_record] &&
       params[:town_health_record][:town] &&
       params[:town_health_record][:town].length > 0
       @records = TownHealthRecord.where( town: params[:town_health_record][:town] )
    else
      @records = TownHealthRecord.all
    end
  end


end
