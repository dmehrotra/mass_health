class TownHealthRecordController < ApplicationController
  def index
    @current_query = TownHealthRecord.new
    @records = TownHealthRecord.all
  end

  def create
  
  end


end
