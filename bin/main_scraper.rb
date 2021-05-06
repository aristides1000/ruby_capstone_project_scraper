# require 'open-uri'
# require 'net/http'

url = "https://www.indeed.com/jobs?q=full%20stack%20developer&rbl=Remote&jlid=aaa2b906602aa8f5&explvl=entry_level&vjk=a62621d1694f762d"
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
puts response.body

