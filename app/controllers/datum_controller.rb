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
    csv_text = File.read('public/uploads/datum/cleaner.csv')
    csv = CSV.parse(csv_text, :headers => true)
    @headers = csv.headers
    @rows = csv.take(10)
  end

  def data
    csv_text = File.read('public/uploads/datum/cleaner.csv')
    csv = CSV.parse(csv_text, :headers => true)
    @headers = csv.headers
    @rows = csv.take(10)
    render :json => @rows
  end
end
  