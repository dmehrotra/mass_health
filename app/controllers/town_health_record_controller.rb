class TownHealthRecordController < ApplicationController

  include TownHealthRecordHelper

  def index
    if params[:limit].nil?
      @limit = 25
    else
      @limit = params[:limit].to_i
    end


    @column     = params[:column_select]
    @sort_order = params[:sort_order]

    @records = TownHealthRecord.order("#{@column} #{@sort_order}").limit(@limit)

  end


end
