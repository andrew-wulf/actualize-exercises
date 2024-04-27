# QUESTION 1
# The following code uses the sqlite3 Ruby library.
# First read the library documentation: https://github.com/sparklemotion/sqlite3-ruby 
# Then write comments next to each line explaining what you think the code is doing.
require 'sqlite3'                                                                  # import library

db = SQLite3::Database.open 'test.db'                                              # open the .db file test.db, and set it to "db" variable
db.results_as_hash = true                                                          # modify an attribute of db object, results of a query will be in hash form
db.execute "CREATE TABLE IF NOT EXISTS images(path TEXT, thumbs_up INT)"           # .execute executes an sql command. This command creates a tables called "images" if it doesn't already exist, with columns "path" (text type) and "thumbs_up" (integer).

image_path = 'image1.png'                                                          # sets path of an image file to a variable
results = db.query "SELECT path, thumbs_up FROM images WHERE path=?", image_path   # sets results of a database query to "results". For each database entry whose path matches the given image path, return it's "path" and "thumbs_up" values.

first_result = results.next                                                        # retrieve the first result.
if first_result                                                                    # if there is a result,
  puts first_result['thumbs_up']                                                    # print the "thumbs_up" value.
else
  puts 'No results found.'                                                         # else, print "No results found.""
end
