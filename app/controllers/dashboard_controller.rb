class DashboardController < ApplicationController
  expose(:championships) { Championship.all }

  def index
  end
end
