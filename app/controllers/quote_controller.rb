class QuoteController < ApplicationController
    def index
        @result = "#{params[:name]}『#{params[:title]}』(#{params[:publisher]}, #{params[:year]}) 。"
        @result2 = "#{params[:name]}『#{params[:title]}ー#{params[:subtitle]}』(#{params[:publisher]}, #{params[:year]}) 。"

    end
    
    def essay
        @result = "#{params[:book_author]}「#{params[:book_title]}」#{params[:editor]}編『#{params[:book_title]}』(#{params[:publisher]}, #{params[:year]})。"
    end
    
    def translation
        @result = "#{params[:author]}(#{params[:translator]}訳)『#{params[:title]}』(#{params[:publisher]}, #{params[:year]}) 。"

    end
end
