xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "#{@table_title}"
    xml.description ""
    xml.link "#{url_for(:action => 'index')}"

    for vocab in @vocabs
      xml.item do
        xml.title vocab.name
        xml.description("#{vocab.note}\n")
        xml.pubDate vocab.created_at.to_s(:rfc822)
        xml.link vocab_url(vocab)
      end
    end
  end
end
