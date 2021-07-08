class User < ApplicationRecord
validates(:name,{presence:true, length:{maximum: 15}})	
validates(:email,{presence:true, length:{maximum: 50}, format:{with:URI::MailTo::EMAIL_REGEXP}})
end

# module ApplicationHelper
#   class StudentController
#   	def test()
#   	  puts "this is test"
#   	end
#   	def self.reward()
#   		puts"memory"
#   	end
#   	CHAMPION=10

#   	def check()
#       puts "small effort is important"
#   end

# end
# ApplicationHelper::check
# ApplicationHelper::StudentController.new.test 
# ApplicationHelper::StudentController.reward
# ApplicationHelper::StudentController::CHAMPION

