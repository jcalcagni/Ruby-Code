iven /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
  assert movies_table.hashes.size == Movie.all.count
end
 
 
Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  titles = page.all("table#movies tbody tr td[1]").map {|t| t.text}
  assert titles.index(e1) < titles.index(e2)
end
 
 
 
When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  rating_list.split(",").each do |rating|
    rating = rating.strip
    if uncheck == "un"
       step %Q{I uncheck "ratings_#{field}"}
       step %Q{the "ratings_#{field}" checkbox should not be checked}
    else
      step %Q{I check "ratings_#{field}"}
      step %Q{the "ratings_#{field}" checkbox should be checked}
    end
  end
end
 
Then /^I should see the following ratings: (.*)/ do |rating_list|
  ratings = page.all("table#movies tbody tr td[2]").map! {|list| list.text}
  rating_list.split(",").each do |rating|
    assert ratings.include?(rating.strip)
  end
end
 
Then /^I should not see the following ratings: (.*)/ do |rating_list|
  ratings = page.all("table#movies tbody tr td[2]").map! {|list| list.text}
  rating_list.split(",").each do |rating|
    assert !ratings.include?(rating.strip)
  end
end
 
Then /^I should see all of the movies$/ do
  rows = page.all("table#movies tbody tr td[1]").map! {|list| list.text}
  assert ( rows.size == Movie.all.count )
end
 
Then /^I should see no movies$/ do
  rows = page.all("table#movies tbody tr td[1]").map! {|list| list.text}
  assert rows.size == 0
end
