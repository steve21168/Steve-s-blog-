class Comment < ActiveRecord::Base
  validates :name, presence: true
  validates :body, presence: true
  
  belongs_to(
    :post,
    class_name: 'Post',
    primary_key: :id,
    foreign_key: :post_id
  )
end
