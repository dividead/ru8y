class MainController < ApplicationController
  def index
    require 'open-uri'
    require 'nokogiri'
    doc = Nokogiri::HTML(open("http://www.nyaa.se/?page=search&cats=1_37&filter=0&term="))
    @animu = []
    doc.css('td.tlistname a').each do |i|
      if i.text.first == '['
      @animu << {
        group: i.text.scan(/\[[^\]]+\]/).first,
        episode: i.text.split(/\[[^\]]+\]/)[1] || '[no name]',
        link: i['href'].gsub('view', "download"),
        resolution: i.text.scan(/\[\d[^\]]+0p\]/).first || '[potato]'
        }
      end
    end
    @groups = (@animu.map{|i| i[:group]}).uniq.sort
    @res = (@animu.map{|i| i[:resolution]}).uniq.sort
    @eps = (@animu.map{|i| i[:episode]}).uniq.sort
  end
end
