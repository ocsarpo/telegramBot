require 'httparty'
require 'awesome_print'
require 'json'
require 'uri'
require 'nokogiri'

token = "Your Telegram Token"
url = "https://api.telegram.org/bot"

response = HTTParty.get("#{url}#{token}/getUpdates")

# awesome_print는 루비가 아닌 코드는 이쁘게 못해줌..
# json -> ruby의 hash 로 변환해서 이쁘게해보자
# ap response.body

hash = JSON.parse(response.body)
# ap hash

# 이제 우리는 json에서 id를 찾아와야 됨
chat_id = hash["result"].first["message"]["from"]["id"]
msg = "안녕 여긴 루비 치익 칙"

# KOSPI 지수 스크랩
response = HTTParty.get("http://finance.naver.com/sise/")
html = Nokogiri::HTML(response.body)
kospi = html.css("#KOSPI_now")
msg = "오늘 코스피 지수는 "+ kospi.text

#lotto
response = HTTParty.get("http://nlotto.co.kr/common.do?method=main")
html = Nokogiri::HTML(response.body)
turn = html.css("#lottoDrwNo").text
response = HTTParty.get("http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=#{turn}")
hash = JSON.parse(response.body)

msg = "이번 주 #{turn}회 로또 번호는 "
arr = []
6.times do |num|
  arr << hash["drwtNo#{num+1}"]
end
msg += "#{arr}, 보너스 번호 : #{hash["bnusNo"]}"

encoded = URI::encode(msg)
# while true
  HTTParty.get("#{url}#{token}/sendMessage?chat_id=#{chat_id}&text=#{encoded}")
  # sleep(5) #초 단위
# end
