def show
    require 'open-uri'
    require 'nokogiri'
    x = User.find_by_id(params[:id])
    doc = Nokogiri::HTML(open(x.url))
    xx = doc.css('div.sixteen.columns.bc_p').map {|i| i.text.split(/(S\d{2}E\d{2})/)}
    xx.each{|i| x.shows.find_or_create_by(title:i[0], episode:i[1], name:i[2])}
end
