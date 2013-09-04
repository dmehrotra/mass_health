class TownHealthRecordController < ApplicationController
  include TownHealthRecordHelper
  def index

    if params[:town_health_record] &&
       params[:town_health_record][:town] &&
       params[:town_health_record][:town].length > 0

      @records = TownHealthRecord.where( town: params[:town_health_record][:town] ).limit(get_limit)
    else
      @records = TownHealthRecord.all.limit(get_limit)
    end
  end


end
