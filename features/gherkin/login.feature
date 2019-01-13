#Requirement
# 1. Start scenario on https://mailchimp.com/
#2. Navigate to Mailchimp's "Our Story" page
#3. Then click on the "Learn more about our leadership team." link
#4. Next, save each leadership team members name, position, and description into a .csv file.
#5. End scenario



Feature: As a consumer i would like to know leadership team

Scenario: Verify navigating through site and store leadership profile in a csv
Given I am on Mailchimp home page
And I navigate to "Our Story"
And I navigate to "Learn more about our leadership team"
And I get bio of leadership and generate a csv



