class Report < ActiveRecord::Base
has_many :comments 
belongs_to :users

validates :body, :title, presence: true, on: :create
validates :title, uniqueness: true, on: :create
end

#class Comment < ActiveRecord::Base
#belongs_to :users
#belongs_to :report
#end

#class User < ActiveRecord::Base
#has_many :comments
#has_many :reports
#end
