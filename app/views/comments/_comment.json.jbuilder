json.extract! comment, :id, :user_id, :post_id, :body, :kind, :commentable_id, :commentable_type, :created_at, :updated_at
json.url comment_url(comment, format: :json)
