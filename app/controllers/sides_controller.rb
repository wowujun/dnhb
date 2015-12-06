class SidesController < ApplicationController
  layout 'stage'
  def index
    @sideclas = Sidecla.all
    @sidecfgs = Sidecfg.all
    @advertisements = Advertisement.all
    @sidecontents = Sidecontent.all.paginate(page: params[:page],per_page:4)
    @sidecontent =  Sidecontent.find_by_sql("SELECT * FROM sidecontents LIMIT 6")
    @sideproducts = Sideproduct.all
    @sideabouts = Sideabout.all
    @sideproduct = Sideproduct.find_by_sql("SELECT * FROM sideproducts LIMIT 6")
  end

  def show
    @advertisements = Advertisement.all
    @sidecfgs = Sidecfg.all
     if params[:cla]=='product'
       @sideproduct = Sideproduct.find(params[:id])
     else
       @sidecontent = Sidecontent.find(params[:id])
     end
  end
end
