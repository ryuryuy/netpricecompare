class AmitemsController < ApplicationController
  before_action :logged_in_user , except: [:show]
  before_action :set_item, only: [:show]

  def new
    if params[:q]
        #　デバックログ出力するために記述
      Amazon::Ecs.debug = true
      items = Amazon::Ecs.item_search(
        keyword: params[:q],
        search_index:  'Books',
        dataType: 'script',
        response_group: 'ItemAttributes, Images',
        country:  'jp',
        power: "Not kindle"
      )
      #@items = response.first(50)
      
            # 本のタイトル,画像URL, 詳細ページURLの取得
      @items = []
      books.items.each do |item|
        book = Book.new(
          item.get('ItemAttributes/Title'),
          item.get('LargeImage/URL'),
          item.get('DetailPageURL'),
        )
        @items << book
      end
    end
  end

  def show
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
end