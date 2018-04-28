json.extract! order, :id, :buyer_id, :user_id, :total, :address, :created_at, :updated_at
json.url order_url(order, format: :json)
