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

    # info Parsing VARIABLES\
    page = mechanize.get(url)
    page = mechanize.get(url2)
    officer = page.css('font').css('a')
    right_link = false
    count = 0
    officer.each do |i|
        if count > 3
            if right_link
                puts i.text
                right_link = false
            else
                right_link = true
            end
        else 
            count += 1
        end
    end

    byebug
end

scraper
#97019