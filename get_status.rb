require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://status.aws.amazon.com/"
table_body = driver.find_element(:id,'NA_block')
status_rows = table_body.find_elements(:tag_name, 'tr')
errors = []
status_rows.each do |r|
	tds = r.find_elements(:tag_name,'td')
	unless tds.length != 4
		if tds[2].text != "Service is operating normally."
			errors.push "The status of the #{tds[1].text} service is #{tds[2].text}"
		else
			puts "OK"
		end
	end
end

driver.quit
