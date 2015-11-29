require 'sinatra'
require 'rest-client'
require 'json'
require 'dotenv'
require 'octokit'
Dotenv.load

CLIENT_ID = ENV['GH_BASIC_CLIENT_ID']
CLIENT_SECRET = ENV['GH_BASIC_SECRET_ID']

use Rack::Session::Pool, cookie_only: false

def authenticated?
  session[:access_token]
end

def authenticate!
  erb :index, locals: { client_id: CLIENT_ID }
end

get '/' do
  if !authenticated?
    authenticate!
  else
    client = Octokit::Client.new access_token: session[:access_token]

    # Create a hash for collecting our example data.
    data = Hash.new

    data[:login] = client.user.login # => "octocat"
    data[:email] = client.user.email # => "example@github.com"
    data[:location] = client.user.location # => "Chicago"

    erb :example, locals: data
  end
end

get '/callback' do
  session_code = request.env['rack.request.query_hash']['code']

  result = RestClient.post('https://github.com/login/oauth/access_token',
                          { client_id: CLIENT_ID,
                            client_secret: CLIENT_SECRET,
                            code: session_code },
                          accept: :json)

  session[:access_token] = JSON.parse(result)['access_token']

  redirect '/'
end
