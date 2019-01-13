Tested with chromedriver 2.35.58.. [3rd_party selenium>>chromedriver

Step 1: Install Ruby 2.3.3 https://www.ruby-lang.org/en/news/2016/11/21/ruby-2-3-3-released/
Step 2: Install Bunlder. In command prompt enter c:\> gem install bundler
Step 3: In command prompt Navigate to the root directory of this project i.e. MailChimp
Step 4: Type "bundle install"
Step 5: Type cucumber
this will execute all the test
if you like to generate html report type
cucumber  --format html --out MailChimp
Step 6: csv is store in the root directory