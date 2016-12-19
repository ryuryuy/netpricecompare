class AmitemsController < ApplicationController
  before_action :logged_in_user , except: [:show]
  before_action :set_item, only: [:show]

  def new
    if params[:q]
        #　デバックログ出力するために記述
      Amazon::Ecs.debug = true
      response = Amazon::Ecs.item_search(
        params[:q],
        response_group: 'Medium' ,
        search_index: 'All' ,
        country: 'jp',
        )
      @items = response.items
      
    # find elements matching 'Item' in response object
#    @items.items.each do |item|
      # retrieve string value using XML path
#      item.get('ASIN')
#      item.get('ItemAttributes/Title')

      # return Amazon::Element instance
#      item_attributes = item.get_element('ItemAttributes')
#      item_attributes.get('Title')

#      item_attributes.get_unescaped('Title') # unescape HTML entities
#      item_attributes.get_array('Author')    # ['Author 1', 'Author 2', ...]
#      item_attributes.get('Author')          # 'Author 1'

      # return a hash object with the element names as the keys
#      item.get_hash('SmallImage') # {:url => ..., :width => ..., :height => ...}

      # return the first matching path
      #item_height = item.get_element('ItemDimensions/Height')
      #item_height.attributes('Units')        # 'hundredths-inches'

      # there are two ways to find elements:
      # 1) return an array of Amazon::Element
      #reviews = item.get_elements('EditorialReview')
       #reviews.each do |review|
        #review.get('Content')
      # end
#    end  
    end
  end

  def show
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
end