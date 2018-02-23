class Post < ApplicationRecord
  enum status: { draft: 0, published: 1}
  belongs_to :user

  validates_presence_of :title, :body, :main_image

  mount_uploader :main_image, ImageUploader

  def self.sort_by_date
    order(updated_at: :desc)
  end

end
