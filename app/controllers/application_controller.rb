class ApplicationController < ActionController::Base
    def L4
        session[:c] ||= 0 #遅延初期化
        session[:c] = session[:c].to_i + 1
        render plain: session[:c]
        session.delete(:c)
    end
end
