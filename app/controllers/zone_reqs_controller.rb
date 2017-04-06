class ZoneReqsController < ApplicationController

  def index
    @zone_reqs = ZoneReq.all
  end

  def show
    @zone_req = ZoneReq.find_by_id(params[:id])
  end
end
