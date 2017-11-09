require 'mongo'

conn = Mongo::Client.new(['127.0.0.1:27017'], :database => 'sodibee_development')
db = conn.database
call = db.collections
call = db.collection_names
puts db.collection_names
puts call.find.first.inspect

# db = conn['sodibee_development']
# coll = db['books']
#
# puts coll.find.first.inspect
