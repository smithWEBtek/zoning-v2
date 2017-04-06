class ZoneReqsController < ApplicationController

  def index
    if params[:search]
      phrase = params[:search]
      @zone_reqs = ZoneReq.search(phrase)
    else
      @zone_reqs = ZoneReq.all
    end
  end

  def show
    @zone_req = ZoneReq.find_by_id(params[:id])
  end
end
