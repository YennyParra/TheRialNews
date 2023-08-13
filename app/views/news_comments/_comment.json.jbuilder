json.extract! newscomment, :id, :conten, :user_id, :post_id, :created_at, :updated_at
json.url newscomment_url(newscomment, format: :json)
