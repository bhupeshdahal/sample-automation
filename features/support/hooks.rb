
Before do
  @browser = $browser
end



After do
  print "Open csv stored in the root to see the profile"
end


at_exit do
 $browser.quit
end