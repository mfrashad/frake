require 'csv'

class DatumController < ApplicationController
  def create
    @data = Datum.new(file_name: params[:file])
    if @data.save!
      respond_to do |format|
        format.json{ render :json => @data }
      end
    end
  end

  def index
  end

  def select
    @classes = File.readlines('public/outputs/classes.txt')  
    respond_to do |format|
      format.html
      format.json{ render :json => @classes }
    end
  end

  def data
    @data = File.read('public/outputs/all/person_full.csv').split(",").map(&:strip)
    @count = @data.uniq.length
    @sample = [rand(1..@count/8), rand(@count/8..@count/4)]
    respond_to do |format|
      format.html
      format.json{ render :json => @data }
    end
  end
end
  