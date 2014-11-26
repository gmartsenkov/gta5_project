class HomeController < ApplicationController
  def index
  end

  def api
    @q = params[:q]

    resp = Net::HTTP.get_response(URI.parse('https://api.parkatmyhouse.com/1.1/location/?q='+ @q))
    @data = resp.body

    render json: @data, :callback => params['callback']
  end
end
