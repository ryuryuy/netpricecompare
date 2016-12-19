class TrackingsController < ApplicationController
  before_action :logged_in_user , except: [:show]
  before_action :set_item, only: [:show]

  #require 'open-uri'
  #require 'json'

  def new
    if params[:q]
        result = JSON.load(open("http://nanoappli.com/tracking/api/#{params[:q]}.json").read)
    
     if result['result'] == 0    
        @status = "[最新状況]：#{result['status']}"
        @imagetype = "[配送物種別]：#{result['itemType']}" 
        @slipno = "[配送物伝票番号]：#{result['slipNo']}"
      
        result['statusList'].each do |info|
        @detail = "[時刻]：#{info['date']} #{info['time']} [状況]：#{info['status']} [位置]：#{info['placeName']} (#{info['placeCode']})"
        end
     end
    end
  end
  
 
  def show
  end
end