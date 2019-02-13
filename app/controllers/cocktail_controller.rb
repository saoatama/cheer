class CocktailController < ApplicationController
    def index
        
    end
    
    def show
       
    end
    
    def post
        @active = params[:active].to_i
        @pass = params[:passive].to_i
        @mix = @active*@pass
        @result =
        if @active > @pass
            if @mix%12===0
                "ジントニック"
            elsif @mix > 100
                "ホワイトレディ"
            elsif @mix%6===0
                "ピーチウーロン"
            elsif @mix%8===0
                "カシスオレンジ"
            elsif @mix%2===0
                "ファジーネーブル"
            elsif @mix%5===0
                "モスコミュール"
            elsif @mix%3===0
                "マティーニ"
            else
                "レッドアイ"
            end
        elsif @active < @pass
            if @mix%10===0
                ""
            elsif @mix > 100
                "ビトウィーン・ザ・シーツ"
            elsif @mix%6===0
                "ルシアン"
            elsif @mix%8===0
                "スクリュードライバー"
            elsif @mix%2===0
                "カルーアミルク"
            elsif @mix%5===0
                "青い珊瑚礁"
            elsif @mix%3===0
                "アレキサンダー"
            else
                "ダイキリ"
            end
        else
            if @mix > 100
                "ロングアイランドアイスティー"
            elsif @mix > 12
                "セックス・オン・ザ・ビーチ"
            else
                "キッス・イン・ザ・ダーク"
            end
                    
        end
    end
end
