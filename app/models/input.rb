class Input < ApplicationRecord
  belongs_to :channel
  has_attached_file :audio, :storage => :s3

  validates :audio, presence: true

  validates_attatchment_content_type :audio, :content_type => /.wav/
end
