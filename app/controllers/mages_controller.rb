class MagesController < ApplicationController
  def index
    @mages = Mage.all
  end
end
