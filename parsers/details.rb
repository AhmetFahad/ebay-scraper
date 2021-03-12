# initialize nokogiri
nokogiri = Nokogiri.HTML(content)

# get the seller username
seller = nokogiri.at_css('.seller-persona a')&.text

# get the seller's feedback
feedback = nokogiri.at_css('.seller-persona span[3]')&.text

# save it into outputs
outputs << {
    _collection: 'products',
    title: page['vars']['title'],
    price: page['vars']['price'],
    seller: seller,
    feedback: feedback
}