class BasePage
 include PageObject
 include DataMagic

    page_url($base_url)
    link(:our_story, :text => "Our Story")


def bioParser(html)
    doc = Nokogiri::HTML html
    CSV.open("bio.csv", "w") do |csv|
        doc.css("div article").each do |node|
          name = node.at_css("h5").text.strip
          title = node.at_css("strong").text.strip
          body = node.css("p")[1].text.strip
   csv << [name,title,body]
end


end
end


end





