class Comment < ActiveRecord::Base
belongs_to :users
belongs_to :report
end

#class User < ActiveRecord::Base
#has_many :comments
#has_many :reports
#end

#class Report < ActiveRecord::Base
#has_many :comments
#belongs_to :user
#end
