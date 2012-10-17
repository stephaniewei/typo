Given /^the following articles exist:$/ do |table|
  table.hashes.each do |val|
    Article.create!({:title => val["title"],
                     :body_and_extended => val["body_and_extended"],
                     :author => val["author"],
                     :comments => val["comments"]})
    end
  end
