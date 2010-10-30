xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "#{@table_title}"
    xml.description ""
    xml.link "#{url_for(:action => 'index')}"

    for usecase in @usecases
      xml.item do
        xml.title usecase.name
        xml.description("#{usecase.goal}\n")
        xml.pubDate usecase.created_at.to_s(:rfc822)
        xml.link usecase_url(usecase)
      end
    end
  end
end
