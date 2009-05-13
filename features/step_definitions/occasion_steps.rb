Given /^the following occasions:$/ do |occasions|
  Occasion.create!(occasions.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) occasion$/ do |pos|
  visit occasions_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following occasions:$/ do |occasions|
  occasions.rows.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      response.should have_selector("table > tr:nth-child(#{i+2}) > td:nth-child(#{j+1})") { |td|
        td.inner_text.should == cell
      }
    end
  end
end
