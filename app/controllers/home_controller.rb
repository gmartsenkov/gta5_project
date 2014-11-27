 class HomeController < ApplicationController
  def index
  end

  def api
    @q = params[:q]
    @data = []
    resp = Net::HTTP.get_response(URI.parse('https://api.parkatmyhouse.com/1.1/location/?q='+ @q))
    @data[0] = resp.body
    total = resp['x-total-result-count'].to_i
    per = resp['x-result-count'].to_i
    if (total / per) < 3
    pages = (total / per )
    else
      pages = 3
    end

    for i in 1..pages

      resp = Net::HTTP.get_response(URI.parse('https://api.parkatmyhouse.com/1.1/location/?q='+ @q + '?page=' + i.to_s))
      @data[i.to_i] = resp.body
    end

    render json: @data, :callback => params['callback']
  end

  def assignment
    @search = params[:city]
    if @search.nil?
      @search = "wembley"
    end
  end
end
