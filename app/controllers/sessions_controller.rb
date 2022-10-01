class SessionsController < ApplicationController
    def index        
         session[:page_views] ||= 0
         session[:page_views] += 1

         cookies[:page_views] ||= 0
         cookies[:page_views] = cookies[:page_views].to_i - 1


        render json: {session: session, cookies: cookies.to_hash}
    end
end