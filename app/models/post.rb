class Post < ActiveRecord::Base
    has_many :replies
    belongs_to :user
    # mount_uploader :photo, PhotoUploader
    # validates :dbName, presence: true
end
