class MiamiCityTransit
  require 'httparty'
  include HTTParty

  base_uri 'http://miami.etaspot.net/service.php'

  def self.routes(options={})
    endpoint = ''
    params = {service: 'get_routes'}.merge(options)
    self.get(endpoint, :query => params)
  end

  def self.stops(options={})
    endpoint = ''
    params = {service: 'get_stops'}.merge(options)
    self.get(endpoint, :query => params)
  end

  def self.vehicles(options={})
    endpoint = ''
    params = {service: 'get_vehicles'}.merge(options)
    self.get(endpoint, :query => params)
  end

  def self.proxy(params)
    endpoint = ''
    self.get(endpoint, :query => params)
  end

end