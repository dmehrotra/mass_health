class TownHealthRecordController < ApplicationController
  include TownHealthRecordHelper
  def index

    if params[:town] &&
       params[:town].length > 0

      @records = TownHealthRecord.where( town: params[:town] )
    else
      @records = TownHealthRecord.limit(params[:limit].to_i + 2)
    end
  end


end
