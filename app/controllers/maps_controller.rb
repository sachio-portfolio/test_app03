class MapsController < ApplicationController
  def index
    @divesites = Divesite.all.limit(12)
  end
end
