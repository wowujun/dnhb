class SidesController < ApplicationController
  layout 'stage'

  def index
    @sideclas = Sidecla.all.order("id desc")
    @sidecfgs = Sidecfg.all
    @advertisements = Advertisement.all
    @sidecontents = Sidecontent.all.paginate(page: params[:page],per_page:11).order("id desc")
    @sidecontent =  Sidecontent.find_by_sql("SELECT * FROM sidecontents LIMIT 6")
    @sideabouts = Sideabout.all

    sideshixt = Sideshixt.find_by_sql("select *from (select * from sideshixts order by date desc) c order by status desc")
    #sideshixt = Sideshixt.order("date desc")
    @sideshixts = Sideshixt.paginate(page: params[:sideshixt],per_page:20).order("id desc")

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
