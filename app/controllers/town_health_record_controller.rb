class TownHealthRecordController < ApplicationController

  include TownHealthRecordHelper

  def index
    if params[:limit].nil? || params[:limit].length == 0
      @limit = TownHealthRecord.count
    else
      @limit = params[:limit].to_i
    end

    @ignore_list = params[:ignore]
    @ignore_array = []
    @ignore_array = @ignore_list.split(/, |,/).map { | word | word.split.map(&:capitalize).join(' ') } if !@ignore_list.nil?
    @ignore_string = @ignore_array.map { | name | "town != '#{name}'" }.join(" AND ")


    @column     = params[:column_select]
    @sort_order = params[:sort_order]

    if @ignore_array.size == 0
      @records = TownHealthRecord.order("#{@column} #{@sort_order}").limit(@limit)
    else
      @records = TownHealthRecord.where("#{@ignore_string}").order("#{@column} #{@sort_order}").limit(@limit)
    end


  end


end
