class QuotesController < ApplicationController
  def new
  end
  def create
    render plain: params[:quote].inspect
  end
end
