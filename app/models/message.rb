class Message < ApplicationRecord
  # has_many_attached :images
  # has_many_attached :images, service: :s3
  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
end
