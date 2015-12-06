class CtsinitsController < ApplicationController
  def index
    if Admin.count == 0
      Admin.create(name:"admin",password:"admin",password_confirmation:"admin",status:1)
    end

    if Sidecfg.count == 0
      Sidecfg.create(company:"云南得能环保科技有限公司",tel:'15706940934',fax:'0877-2662993',address:"云南省玉溪市红塔区红塔大道24号云兴建材市场一号院内",dingyuhao:"DNHB2012")
    end
  end
  def new

  end

  def create

  end
end
