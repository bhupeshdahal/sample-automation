require 'nokogiri'
require 'page-object'
require 'data_magic'
require 'page-object/page_factory'
require 'fig_newton'
require 'csv'


World(PageObject::PageFactory)

$base_url = FigNewton.base_url

#browser config
if ENV['browser'].nil? == false
  if ENV['browser'] == 'firefox'
    $browser = Selenium::WebDriver.for :firefox
  elsif ENV['browser'] == 'chrome'
  $browser = Selenium::WebDriver.for :chrome

  else
    $browser = Selenium::WebDriver.for :ie
  end
else
  $browser = Selenium::WebDriver.for :chrome, :profile => "default"
end