class SidesController < ApplicationController
  layout 'stage'

  def index
    @sideclas = Sidecla.all
    @sidecfgs = Sidecfg.all
    @advertisements = Advertisement.all
    @sidecontents = Sidecontent.all.paginate(page: params[:page],per_page:8)
    @sidecontent =  Sidecontent.find_by_sql("SELECT * FROM sidecontents LIMIT 6")
    @sideabouts = Sideabout.all
    @sideshixts = Sideshixt.all.paginate(page: params[:page],per_page:8)
    @classcas = Classca.all
  end

  def show

    @advertisements = Advertisement.all
    @sidecfgs = Sidecfg.all

     if params[:cla]=='product'
       @sidecla = Sidecla.find(params[:id])
       @sideproducts =@sidecla.sideproducts
     else if params[:cla]=='new'
       @sidecontent = Sidecontent.find(params[:id])

     else if params[:cla]=='shixt'
         @sideshixt = Sideshixt.find(params[:id])
          end
     end
       end
  end
end
