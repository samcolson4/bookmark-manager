require 'pg'

def truncates
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec('TRUNCATE TABLE bookmarks')
end

def persisted_data(id:)
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end


def add_urls
  Bookmark.create('Makers Academy', 'http://www.makersacademy.com')
  Bookmark.create('Destroy All Software', 'http://www.destroyallsoftware.com')
  Bookmark.create('Google', 'http://www.google.com')
end

def add_url
  Bookmark.create('Makers Academy', 'http://www.makersacademy.com')
end

