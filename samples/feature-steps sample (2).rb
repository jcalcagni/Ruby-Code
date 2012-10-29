
feature
Scenario: Follow the edit link from the athlete list
    Given the following shoe sizes
          | size | sort_order |
          | 10   | 1          |
          | 10.5 | 2          |
          | 11   | 3          |
      And the following athlete
          | first_name | last_name | size |
          | John       | Doe       | 10.5 |
      And I am on the list page
     When I follow "edit"
     Then I should be on the edit page

step
Given /^the following athlete$/ do |table|
  table.hashes.each do |hash|
    Athlete.create(:first_name => hash[:first_name],
      :last_name => hash[:last_name]
      :shoe_size => ShoeSize.find_by_size(hash[:size])
  end
end



