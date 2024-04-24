# QUESTION 1
# The following code uses the csv Ruby library.
# First read this tutorial on the library: https://www.rubyguides.com/2018/10/parse-csv-ruby/ 
# Then write comments next to each line explaining what you think the code is doing.
require 'csv'                                               # load csv library

def write_csv(file_path, data)                              # define a method that takes filepath string and some data, this method expects an array of hashes.
  headers = data.first.keys                                 # take the keys from the first hash for the headers.
  CSV.open(                                                 # using the .open method gives some flexibility with what you want to do with the file.
    file_path,                                              # the filepath is given. If the file already exists, it can be read or overwitten with this method. If it doesn't, it can be generated from scratch.
    'w',                                                    # this denotes which mode to open the file in, such as read-only, write-only, or both. In this case it's write-only.
    write_headers: true,                                    # an optional key-word argument. If set to false, the first line will just be the first row of the data.
    headers: headers                                        # another optional key-word argument, this sets the headers to the array you give it.
  ) do |csv|                                                # I believe this is similar to with in python; the following actions are done while the file is open, and the file closes after the actions complete.
    data.each do |row|                                      # for each hash in the data array,
      csv << row.values                                     # write a new line in the csv file using an array of the the hash values.
    end
  end
end

file_path = 'data.csv'                                      # this is the file path string.
data = [                                                    # this is the data.
  { name: 'John Doe', age: 30, city: 'New York' },
  { name: 'Jane Smith', age: 25, city: 'San Francisco' },
  { name: 'Bob Johnson', age: 35, city: 'Chicago' }
]
write_csv(file_path, data)                                  # this calls the method.
