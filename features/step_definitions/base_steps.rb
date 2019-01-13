Given("I am on Mailchimp home page") do
    visit_page (BasePage)
    #refactor to pass textas parameter
     text1 = "Our Story"
     @current_page.wait_until(80) {@current_page.text.include? text1}
end


Given("I navigate to {string}") do |nav_text|
begin
  @browser.mouse.move_to @browser.find_element(:link_text, nav_text)
  @browser.find_element(:link_text, nav_text).send_keys :enter
  rescue
   @browser.find_element(:link_text, nav_text).click
   end
end

Given("I get bio of leadership and generate a csv") do
  on_page BasePage do |page|
  page.bioParser(page.html)
  end
end

