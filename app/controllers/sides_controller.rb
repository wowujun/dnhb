class SidesController < ApplicationController
  layout 'stage'

  def index
    @sideclas = Sidecla.all
    @sidecfgs = Sidecfg.all
    @advertisements = Advertisement.all
    @sidecontents = Sidecontent.all.paginate(page: params[:page],per_page:4)
    @sidecontent =  Sidecontent.find_by_sql("SELECT * FROM sidecontents LIMIT 6")

    @sideabouts = Sideabout.all

  end

  def show
    @advertisements = Advertisement.all
    @sidecfgs = Sidecfg.all

     if params[:cla]=='product'
       @sidecla = Sidecla.find(params[:id])
       @sideproducts =@sidecla.sideproducts
     else
       @sidecontent = Sidecontent.find(params[:id])
     end
  end
end
