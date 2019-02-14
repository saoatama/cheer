class QuoteController < ApplicationController
    def index
        @result = "#{params[:name]}, (#{params[:year]}) 『#{params[:title]}』 #{params[:publisher]}"
    end
end
