class RankwatchitemsController < ApplicationController
  before_action :logged_in_user , except: [:show]
  before_action :set_item, only: [:show]

  def new
    if params[:a]
        #　デバックログ出力するために記述
      Amazon::Ecs.debug = true
      response = Amazon::Ecs.item_search(
        params[:a],
        response_group: 'Medium' ,
        #response_group: 'SalesRank' ,
        search_index: 'Watches' ,
        country: 'jp',
        sort: 'salesrank',
        )
      @items = response.items
      
    end
  end

  def show
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
end