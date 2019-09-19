require 'httparty'
require 'nokogiri'
require 'byebug'
require 'mechanize'

def scraper
    # BROWSR VARIABLES
   mechanize = Mechanize.new
    per_page = 50
    url = "http://dpsstnet.state.or.us/IRIS_PublicInquiry/PrivateSecurity/SMSGoPersonLkp.aspx"
    url2 = "http://dpsstnet.state.or.us/IRIS_PublicInquiry/PrivateSecurity/SMSGoPersonLkp.aspx?LkpBy=ID&LkpVal=0"
    # browser.goto(url)
    # browser.goto(url2)

    # info Parsing VARIABLES\
    page = mechanize.get(url)
    page = mechanize.get(url2)
    # parsed_page = Nokogiri::HTML(unparsed_page)
    officer = page.css('font').css('a')
    byebug
end

scraper
#97019