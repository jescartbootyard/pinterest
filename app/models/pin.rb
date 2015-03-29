class Pin < ActiveRecord::Base
	has_attached_file :image,
            :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"
    validates_attachment :image, content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png' 'image/gif'] },
                                                                size: { less_than: 5.megabytes }

    belongs_to :user

    validates :image, presence: true
    validates :description, presence: true
end
