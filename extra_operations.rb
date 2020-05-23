module ExtraOperations
  def translate(text, lang)
    
    uri = URI('https://translate.yandex.net/api/v1.5/tr.json/translate')
    key = "trnsl.1.1.20200415T041342Z.a521d34ac9ebf42c.3581a4916fd3200438f3be1befbeb150718c3634"
    params = { :key => key, :text => text, :lang => lang }
    uri.query = URI.encode_www_form(params)
    res = Net::HTTP.get_response(uri)
    res = JSON.parse(res.body)
    return res["text"]
  end
end
