class CocktailController < ApplicationController
    def index
        
    end
    
    def show
       
    end
    
    def post
        @array = ["ジントニック", "ピーチウーロン", "カシスオレンジ", "ファジーネーブル", "モスコミュール", "マティーニ", "レッドアイ", "ベッドウィーン・ザ・シーツ", "ルシアン","カルーアミルク","青いサンゴ礁","アレキサンダー","ロングアイランドアイスティー","セックスオンザビーチ","キッスインザダーク"]
        @cocktail = @array.sort_by{rand}
        @active = params[:active].to_i
        @pass = params[:passive].to_i
        @result = @cocktail[0]
    end
end
