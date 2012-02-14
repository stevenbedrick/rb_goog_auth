require "bundler/setup"
require 'typhoeus'

class GoogAuth

  @@AUTH_URL = "https://www.google.com/accounts/ClientLogin"

  def get_credentials(login_info)
    
    email = login_info[:username]
    password = login_info[:password]
    source = login_info[:source]
    serv = login_info[:service]
    
    raise ArgumentError if [email, password, source, serv].include? nil
    raise ArgumentError if [email, password, source, serv].include? ''

    response = Typhoeus::Request.post(@@AUTH_URL, :params => {'Email' => email, 'Passwd' => password, 'source' => source, 'service' => serv})
    
    return nil if response.code != 200
    
    to_return = {}
    
    response.body.split("\n").each do |l|
      next if l.strip.nil? or l.strip.length == 0
      k, v = l.strip.split("=")
      to_return[k] = v
    end
    
    return to_return
    
  end
  
  
end

