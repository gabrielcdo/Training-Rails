json.extract! book, :id, :nome, :author_id, :category_id, :stock, :created_at, :updated_at
json.url book_url(book, format: :json)
