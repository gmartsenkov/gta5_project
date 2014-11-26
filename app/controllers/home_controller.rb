class HomeController < ApplicationController
  def index
  end

  def api

    resp = Net::HTTP.get_response(URI.parse('https://api.parkatmyhouse.com/1.1/location/?q=wembley'))
    @data = resp.body

    render json: @data, :callback => params['callback']

  end
end
