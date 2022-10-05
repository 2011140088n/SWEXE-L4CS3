class ApplicationController < ActionController::Base
    def L4
        cookies[:c] ||= 0 #遅延初期化
        cookies[:c] = cookies[:c].to_i + 1
        render plain: cookies[:c]
    end
end
