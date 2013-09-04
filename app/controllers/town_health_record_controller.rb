class TownHealthRecordController < ApplicationController

  include TownHealthRecordHelper

  def index
  
    if params[:column_select] &&
       params[:column_select].length > 0
      @records = TownHealthRecord.order("#{params[:column_select]} #{params[:sort_order]}").limit(params[:limit].to_i)
    
    else
      @records = TownHealthRecord.limit(params[:limit].to_i + 2)
    end
  end


end
