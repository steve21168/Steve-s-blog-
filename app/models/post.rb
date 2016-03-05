class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :title, length: { minimum: 5 }
  validates :body, length: { minimum: 10 }

  has_many(
    :comments,
    class_name: 'Comment',
    primary_key: :id,
    foreign_key: :post_id
  )
end
