class HomeController < ApplicationController
  def index
      url = URI.escape("http://www.sruc.ac.uk/rss/news")  
            rawfeed = HTTParty.get(url, {
            headers: {"User-Agent" => "Bernard/1"}
            })
            @feedHash = Hash.from_xml(rawfeed.to_s)
      puts @feedHash["rss"]["channel"]["item"]
@FeedItems = Kaminari.paginate_array(@feedHash["rss"]["channel"]["item"]).page(params[:page]).per(3) 
  end
end
