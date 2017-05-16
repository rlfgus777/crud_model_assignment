class Post < ActiveRecord::Base
    has_many :replies
    # validates :dbName, presence: true
end
