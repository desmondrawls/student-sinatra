require 'sinatra/base'
require_relative 'scraper'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/main' do
      @students = Student.all
      erb :main 
    end

    get '/students/:last_name' do
      @student = Student.find_by_last_name(params[:last_name])
      erb :student
    end
  end
end