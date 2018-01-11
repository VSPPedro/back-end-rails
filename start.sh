#Start mySQL on Cloud9: mysql-ctl start
#Execute tests more effectively: bundle exec spring rspec
#Execute tests from model: bundle exec spring rspec spec/models/user_spec.rb
#Spec in controller: bundle exec spring rspec spec/requests/api/v1/users_spec.rb 
#Test with curl: curl http://api.taskmanager.dev:$PORT/users/10000
rails s -p $PORT -b $IP